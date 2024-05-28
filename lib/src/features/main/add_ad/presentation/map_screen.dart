import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../data/models/place.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({
    super.key,
    this.isSelecting = true,
    required this.location,
  });

  final PlaceLocation? location;

  // = PlaceLocation(latitude: 37.422, longitude: -122.084, address: '');
  final bool isSelecting;

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final mapControllerCompleter = Completer<YandexMapController>();
  final List<MapObject> mapObject = [];
  final List<MapObject> selectedObjects = [];
  
  @override
  void initState() {
    if(widget.location == null){
      mapObject.add(PlacemarkMapObject(mapId: MapObjectId(uuid.v4()), point: const Point(latitude: 41.311081, longitude: 69.240562,),),);
    }else{
      selectedObjects.add(PlacemarkMapObject(
        mapId: MapObjectId(widget.location!.image.toString()),
        point: Point(
            latitude: widget.location!.latitude,
            longitude: widget.location!.longitude),
        text: const PlacemarkText(
          text: '',
          style: PlacemarkTextStyle(
              size: 12, placement: TextStylePlacement.bottom),
        ),
        icon: PlacemarkIcon.single(PlacemarkIconStyle(
          scale: 2,
          image: BitmapDescriptor.fromAssetImage('assets/icons/location.png'),
        )),
      ),);
    }


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Point? pickedLocation;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
        actions: [
          if(widget.isSelecting)
            IconButton(onPressed: (){}, icon: const Icon(Icons.save))
        ],
      ),

      body: YandexMap(
        onMapCreated: (controller){
          controller.moveCamera(
            CameraUpdate.newCameraPosition(
              CameraPosition(target: pickedLocation != null ? pickedLocation! : Point(latitude: widget.location!.latitude, longitude: widget.location!.longitude), zoom: 15),
            ),
          );
          mapControllerCompleter.complete(controller);
        },
        onMapTap: (position){
          setState(() {
            pickedLocation = position;
          });
        },
        zoomGesturesEnabled: true,
        mapObjects: (widget.isSelecting) ? selectedObjects   : mapObject,
      ),
    );
  }
}
