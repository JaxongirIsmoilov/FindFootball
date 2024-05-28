import 'dart:io';
import 'dart:typed_data';

import 'package:uuid/uuid.dart';

const uuid = Uuid();

class PlaceLocation{
  final double latitude;
  final double longitude;
  final String address;
  Uint8List? image;

  PlaceLocation({required this.latitude, required this.longitude, required this.address, this.image});
}

class Place{
  final String id;
  final String title;
  final File image;
  final PlaceLocation placeLocation;

  Place({required this.title, required this.image, required this.placeLocation}) : id = uuid.v4();
}