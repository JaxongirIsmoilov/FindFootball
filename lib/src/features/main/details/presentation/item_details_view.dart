import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/features/main/details/data/models/features_model.dart';
import 'package:find_football/src/features/main/details/presentation/widgets/details_image_slider.dart';
import 'package:find_football/src/features/main/home/data/models/response/all_stadiums_success.dart';
import 'package:find_football/src/features/main/profile/presentation/widgets/custom_button_pref.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

import '../../booking/presentation/book_stadium.dart';

@RoutePage()
class ItemDetailsView extends StatefulWidget {
  final AllStadiumsSuccess allStadiumsSuccess;
  final String address;

  const ItemDetailsView(
      {super.key, required this.allStadiumsSuccess, required this.address});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  late ScrollController _scrollController;
  final mapControllerCompleter = Completer<YandexMapController>();

  List<FeaturesModel> list = [
    FeaturesModel(AppIcons.showerIcon, 'Душ', true),
    FeaturesModel(AppIcons.changingRoomIcon, 'Раздевалки', true),
    FeaturesModel(AppIcons.lightsIcon, 'Освещение', true),
    FeaturesModel(AppIcons.carParkingIcon, 'Парковка — бесплатная', true),
    FeaturesModel(AppIcons.tribuniIcon, 'Трибуны', false),
    FeaturesModel(AppIcons.inventoryIcon, 'Инвентарь', true),
  ];

  List<String> stadiumImageList = [
    AppIcons.stadiumPic1,
    AppIcons.stadiumPic2,
    AppIcons.stadiumPic3,
    AppIcons.stadiumPic4,
  ];

  Future<void> _moveToCurrentLocation(double lat, double lon) async {
    (await mapControllerCompleter.future).moveCamera(
      animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(
            latitude: lat,
            longitude: lon,
          ),
          zoom: 15,
        ),
      ),
    );
  }

  bool isOpen(String startTime, String endTime) {
    final start = TimeOfDay(
      hour: int.parse(startTime.split(':')[0]),
      minute: int.parse(
        startTime.split(':')[1],
      ),
    );
    final end = TimeOfDay(
      hour: int.parse(endTime.split(':')[0]),
      minute: int.parse(
        endTime.split(':')[1],
      ),
    );
    final now = TimeOfDay.now();
    int toMinutes(TimeOfDay time) {
      return time.hour * 60 + time.minute;
    }

    final startMinutes = toMinutes(start);
    final endMinutes = toMinutes(end);
    final nowMinutes = toMinutes(now);

    if (startMinutes <= endMinutes) {
      return nowMinutes >= startMinutes && nowMinutes <= endMinutes;
    } else {
      return nowMinutes >= startMinutes || nowMinutes <= endMinutes;
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _moveToCurrentLocation(widget.allStadiumsSuccess.location.latitude,
        widget.allStadiumsSuccess.location.longitude);
    super.initState();
  }

  void _openBookOverlay(String stadiumId, String startWorkingTime, String endWorkingTime) {
    showModalBottomSheet(
      useSafeArea: true,
      isScrollControlled: true,
      context: context,
      backgroundColor: AppColors.appBakColor,
      builder: (ctx) => BookStadium(stadiumId: stadiumId, startWorkingTime: startWorkingTime, endWorkingTime: endWorkingTime, ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBakColor,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 38,
                    width: 38,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0D000000),
                          blurRadius: 12,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      size: 20,
                    )),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 38,
                    width: 38,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x0D000000),
                          blurRadius: 12,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      AppIcons.shareIcon,
                      height: 20,
                      width: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  height: 38,
                  width: 38,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x0D000000),
                        blurRadius: 12,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Image.asset(
                    AppIcons.likeIconBorder,
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                child: DetailsImageSlider(
                  imageList: widget.allStadiumsSuccess.images.isNotEmpty
                      ? widget.allStadiumsSuccess.images
                          .map((image) => image.path)
                          .toList()
                      : [
                          AppIcons.adImage1,
                          AppIcons.stadiumPic2,
                          AppIcons.stadiumPic3,
                          AppIcons.stadiumPic4
                        ],
                  isImageEmpty: widget.allStadiumsSuccess.images.isEmpty,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.allStadiumsSuccess.name,
                        style: const TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                      RatingStars(
                        value: 4.5,
                        starBuilder: (index, color) => Icon(
                          Icons.star,
                          color: color,
                          size: 16,
                        ),
                        starCount: 5,
                        valueLabelColor: Colors.white,
                        valueLabelTextStyle: const TextStyle(
                          color: AppColors.textColor,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0,
                        ),
                        maxValue: 5,
                        starSpacing: 0,
                        maxValueVisibility: false,
                        valueLabelVisibility: true,
                        animationDuration: const Duration(milliseconds: 1000),
                        valueLabelPadding: const EdgeInsets.symmetric(
                          vertical: 0,
                          horizontal: 0,
                        ),
                        valueLabelMargin: const EdgeInsets.only(right: 0),
                        starOffColor: const Color(0xffe7e8ea),
                        starColor: Colors.yellow,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "${widget.allStadiumsSuccess.price.amount} ${widget.allStadiumsSuccess.price.currency}",
                        style: const TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.stadium_rounded,
                                color: AppColors.textColor,
                                size: 20,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                '15 × 11,5 × 4,5    ',
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                          Container(
                            width: 2,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey,
                            ),
                          ),
                          const Expanded(
                            child: Center(
                              child: Text(
                                'Крытая',
                                style: TextStyle(
                                  color: AppColors.textColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                isOpen(
                                        widget.allStadiumsSuccess
                                                .workStartHour ??
                                            "07:00:00",
                                        widget.allStadiumsSuccess
                                                .workEndingHour ??
                                            "23:00:00")
                                    ? 'Открытый'
                                    : "Закрытый",
                                style: TextStyle(
                                  color: isOpen(
                                          widget.allStadiumsSuccess
                                                  .workStartHour ??
                                              "07:00:00",
                                          widget.allStadiumsSuccess
                                                  .workEndingHour ??
                                              "23:00:00")
                                      ? AppColors.openTextColor
                                      : AppColors.closedTextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Вмещает игроков - 15',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Location',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppIcons.location,
                            height: 16,
                            width: 16,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              widget.address,
                              style: const TextStyle(
                                color: AppColors.textColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Orientir',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                        overflow: TextOverflow.visible,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            AppIcons.routeIcon,
                            height: 16,
                            width: 16,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            child: Text(
                              widget.address,
                              style: const TextStyle(
                                color: AppColors.textColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w300,
                              ),
                              overflow: TextOverflow.visible,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      GestureDetector(
                        onTap: () {
                          // MapsLauncher.launchCoordinates(37.13246, 54.12324);
                        },
                        child: Container(
                          height: 140,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(6),
                              topRight: Radius.circular(6),
                              bottomRight: Radius.circular(6),
                              bottomLeft: Radius.circular(6),
                            ),
                            child: YandexMap(
                              onMapCreated: (controller) {
                                mapControllerCompleter.complete(controller);
                              },
                              onMapTap: (argument) {
                                // MapsLauncher.launchCoordinates(37.13246, 54.12324);
                              },
                              mapObjects: [
                                PlacemarkMapObject(
                                  mapId: const MapObjectId('102'),
                                  icon: PlacemarkIcon.single(
                                    PlacemarkIconStyle(
                                      scale: 3,
                                      image: BitmapDescriptor.fromAssetImage(
                                        AppIcons.location,
                                      ),
                                    ),
                                  ),
                                  point: Point(
                                    latitude: widget
                                        .allStadiumsSuccess.location.latitude,
                                    longitude: widget
                                        .allStadiumsSuccess.location.longitude,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(
                    height: 1.2,
                    color: Color(0xFFF2F2F2),
                  ),
                ),
              ],
            ),
          ),
          SliverGrid.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: 40,
              crossAxisSpacing: 16,
            ),
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    Image.asset(
                      list[index].img,
                      height: 18,
                      width: 18,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      list[index].title,
                      style: const TextStyle(
                        color: AppColors.textColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Image.asset(
                      list[index].has ? AppIcons.checkIcon : AppIcons.closeIcon,
                      height: list[index].has ? 24 : 18,
                      width: list[index].has ? 24 : 18,
                      color: list[index].has ? Colors.blue : Colors.red,
                    ),
                  ],
                ),
              );
            },
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                widget.allStadiumsSuccess.details,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: AppColors.textColor,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                CustomButtonPref(
                    color: AppColors.buttonColor,
                    text: "Book",
                    textColor: AppColors.white,
                    onTap: () {
                        _openBookOverlay(widget.allStadiumsSuccess.id, widget.allStadiumsSuccess.workStartHour ?? "07:00:00", widget.allStadiumsSuccess.workEndingHour ?? "23:59:59");
                    },
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 45),
                const Spacer(),
                CustomButtonPref(
                    color: AppColors.buttonColor,
                    text: "Call",
                    textColor: AppColors.white,
                    onTap: () async {
                      await _makePhoneCall(widget.allStadiumsSuccess.ownerAccount.user!.phoneNumber);
                    },
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 45),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(uri);
  }
}
