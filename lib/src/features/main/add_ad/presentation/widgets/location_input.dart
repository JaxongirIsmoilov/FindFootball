import 'dart:async';
import 'dart:typed_data';

import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geocoding;
import 'package:location/location.dart';
import 'package:screenshot/screenshot.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../data/models/place.dart';
import '../map_screen.dart';

class LocationInputWidget extends StatefulWidget {
  const LocationInputWidget(
      {super.key, required this.onGetLocation, required this.name});

  final String name;
  final void Function(PlaceLocation placeLocation) onGetLocation;

  @override
  State<LocationInputWidget> createState() => _LocationInputWidgetState();
}

class _LocationInputWidgetState extends State<LocationInputWidget> {
  PlaceLocation? _pickedLocation;
  var _isGettingLocation = false;
  final mapControllerCompleter = Completer<YandexMapController>();
  final List<MapObject> mapObject = [];
  late Point newPoint;
  late double zoom;
  late ScreenshotController _screenshotController;
  Uint8List? imageBytes;

  Future<void> _getCurrentLocation() async {
    Location location = Location();

    bool serviceEnabled;
    PermissionStatus permissionGranted;
    LocationData locationData;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    setState(() {
      _isGettingLocation = true;
    });

    locationData = await location.getLocation();
    final lat = locationData.latitude;
    final lng = locationData.longitude;

    newPoint = Point(latitude: lat!, longitude: lng!);
    List<geocoding.Placemark> placemarks =
        await geocoding.placemarkFromCoordinates(lat, lng);

    print(placemarks.first);

    // imageBytes = await _screenshotController.capture();
    // print(imageBytes);

    setState(() {
      _isGettingLocation = false;
      zoom = 15;
      _pickedLocation = PlaceLocation(
          latitude: lat,
          longitude: lng,
          address:
              '${placemarks.first.country}, ${placemarks.first.locality}, ${placemarks.first.street}',
          image: imageBytes!);
      mapObject.add(
        PlacemarkMapObject(
          mapId: MapObjectId(locationData.time.toString()),
          point: Point(
              latitude: locationData.latitude!,
              longitude: locationData.longitude!),
          text: PlacemarkText(
            text: widget.name,
            style: const PlacemarkTextStyle(
                size: 12, placement: TextStylePlacement.bottom),
          ),
          icon: PlacemarkIcon.single(PlacemarkIconStyle(
            scale: 2,
            image: BitmapDescriptor.fromAssetImage('assets/icons/location.png'),
          )),
        ),
      );
    });

    widget.onGetLocation(_pickedLocation!);
  }

  @override
  void initState() {
    _screenshotController = ScreenshotController();
    newPoint = const Point(latitude: 41.311081, longitude: 69.240562);
    zoom = 10;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget previewContent = Text(
      'No location chosen',
      textAlign: TextAlign.center,
      style: Theme.of(context)
          .textTheme
          .bodyLarge!
          .copyWith(color: Theme.of(context).colorScheme.onBackground),
    );
    if (_isGettingLocation) {
      previewContent = const CircularProgressIndicator();
    } else {
      previewContent = Screenshot(
        controller: _screenshotController,
        child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
          child: YandexMap(
            onMapCreated: (controller) async {
              controller.moveCamera(
                CameraUpdate.newCameraPosition(
                  CameraPosition(target: newPoint, zoom: zoom),
                ),
              );
              imageBytes = await _screenshotController.capture();
              print('Image Bits --->  ${imageBytes}');
              mapControllerCompleter.complete(controller);
            },
            zoomGesturesEnabled: true,
            mapObjects: mapObject,
          ),
        ),
      );
    }
    return Column(
      children: [
        Container(
            height: 127,
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
            child: previewContent),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton.icon(
              onPressed: _getCurrentLocation,
              label: const Text('Get current location', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              icon: const Icon(Icons.location_on, size: 14,),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => const MapScreen(
                      location: null,
                      isSelecting: true,
                    ),
                  ),
                );
              },
              label: const Text('Select on map', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
              icon: const Icon(Icons.map, size: 14,),
            ),
          ],
        )
      ],
    );
  }
}
