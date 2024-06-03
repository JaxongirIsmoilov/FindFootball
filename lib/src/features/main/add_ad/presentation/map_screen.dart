import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:map_picker/map_picker.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../../../core/di/di.dart';
import '../data/models/place.dart';
import 'bloc/add_ad_bloc.dart';

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
  final mapPickerController = MapPickerController();
  final List<MapObject> mapObject = [];
  final List<MapObject> selectedObjects = [];
  double lat = 41.311081;
  double long = 69.240562;
  
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
    return BlocBuilder<AddAdBloc, AddAdState>(
  builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
        actions: [
          if(widget.isSelecting)
            IconButton(onPressed: (){
              di<AddAdBloc>().add(SelectLocationEvent(lat: lat, long: long));
              context.router.pop();
            }, icon: const Icon(Icons.save))
        ],
      ),

      body: MapPicker(
        mapPickerController: mapPickerController,
        iconWidget: Image.asset(AppIcons.location, height: 60,),
        child: YandexMap(
          onMapCreated: (controller){
            controller.moveCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(target: Point(latitude: lat, longitude: long), zoom: 15),
              ),
            );
            mapControllerCompleter.complete(controller);
          },

          onCameraPositionChanged: (position, updateReason, _){
            lat = position.target.latitude;
            long = position.target.longitude;
            print("${lat} -----------------${long}");
          },
          onMapTap: (position){
            setState(() {
              pickedLocation = position;
            });
          },
          zoomGesturesEnabled: true,
          mapObjects: (widget.isSelecting) ? selectedObjects   : mapObject,
        ),
      ),
    );
  },
);
  }
}
