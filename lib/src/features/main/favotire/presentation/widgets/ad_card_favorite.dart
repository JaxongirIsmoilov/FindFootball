import 'package:find_football/src/core/consts/api/api_constants.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/features/main/favotire/data/models/response/saved_stadiums_success.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart' as geocoding;

class AdCardFavorite extends StatefulWidget {
  final SavedStadiumsSuccess savedStadiumSuccess;
  final VoidCallback onClick;
  final VoidCallback onDelete;

  const AdCardFavorite(
      {super.key, required this.savedStadiumSuccess, required this.onClick, required this.onDelete});

  @override
  State<AdCardFavorite> createState() => _AdCardFavoriteState();
}

class _AdCardFavoriteState extends State<AdCardFavorite> {
  late String address = '';

  @override
  void initState() {
    super.initState();
    _fetchAddress();
  }

  Future<void> _fetchAddress() async {
    try {
      String fetchedAddress = await getAddressFromLocation(
        widget.savedStadiumSuccess.location.latitude,
        widget.savedStadiumSuccess.location.longitude,
      );
      setState(() {
        address = fetchedAddress;
      });
    } catch (e) {
      setState(() {
        address = "Unknown location";
      });
    }
  }

  Future<String> getAddressFromLocation(double lat, double long) async {
    try {
      List<geocoding.Placemark> placemarks = await geocoding.placemarkFromCoordinates(lat, long);
      if (placemarks.isNotEmpty) {
        return "${placemarks.first.country}, ${placemarks.first.locality}, ${placemarks.first.street}";
      }
      return "Unknown location";
    } catch (e) {
      return "Unknown location";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Container(
        margin: const EdgeInsets.all(10),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: widget.savedStadiumSuccess.images.isNotEmpty
                ? NetworkImage(
                "${ApiConstants.BASE_URL_IMG}/${widget.savedStadiumSuccess.images.first.path.replaceAll("\\", "/")}")
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
              top: 10,
              right: 10,
              child: GestureDetector(
                onTap: widget.onDelete,
                child: const Icon(
                  Icons.delete,
                  color: AppColors.red,
                ),
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
                    widget.savedStadiumSuccess.name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
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
}
