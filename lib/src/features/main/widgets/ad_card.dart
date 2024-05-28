import 'package:find_football/src/core/consts/api/api_constants.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/features/main/home/data/models/response/all_stadiums_success.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

class AdCard extends StatefulWidget {
  final AllStadiumsSuccess allStadiumsSuccess;
  final VoidCallback onClick;

  const AdCard(
      {super.key, required this.allStadiumsSuccess, required this.onClick});

  @override
  State<AdCard> createState() => _AdCardState();
}

class _AdCardState extends State<AdCard> {
  late String address = '';

  @override
  void initState() {
    _fetchAddress();
    super.initState();
  }

  Future<void> _fetchAddress() async {
    String  fetchedAddress = await getAddressFromLocation(
        widget.allStadiumsSuccess.location.latitude,
        widget.allStadiumsSuccess.location.longitude);
    setState(() {
      address = fetchedAddress;
    });
  }

  @override
  InkWell build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: widget.allStadiumsSuccess.images.isNotEmpty
                ? NetworkImage(
                    "${ApiConstants.BASE_URL_IMG}/${widget.allStadiumsSuccess.images.first.path.replaceAll("\\", "/")}")
                : const AssetImage(AppIcons.adImage1) as ImageProvider<Object>,
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.3),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              right: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.allStadiumsSuccess.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    address,
                    style: const TextStyle(color: Colors.white70, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<String> getAddressFromLocation(double lat, double long) async {
    List<geocoding.Placemark> placemarks =
        await geocoding.placemarkFromCoordinates(lat, long);
    if (placemarks.isNotEmpty) {
      return "${placemarks.first.country},${placemarks.first.locality},${placemarks.first.street}";
    }
    return "Unknown location";
  }
}
