import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:find_football/src/core/consts/icons/app_icons.dart';
import 'package:find_football/src/features/main/root/data/models/all_ads_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class AdsItem extends StatelessWidget {
  final AllAdsItem allAdsItem;
  final VoidCallback onClick;
  AdsItem({super.key, required this.allAdsItem, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 310,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  topRight: Radius.circular(6),
                ),
                child: Image.asset(AppIcons.adImage2),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    allAdsItem.title,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textColorItem),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      RatingStars(
                        value: (allAdsItem.rating ?? 5).toDouble(),
                        starBuilder: (index, color) {
                          return Icon(
                            Icons.star,
                            color: color,
                            size: 16,
                          );
                        },
                        starCount: 5,
                        valueLabelColor: Colors.white,
                        valueLabelTextStyle: const TextStyle(
                            color: AppColors.textColorItem,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 12.0),
                        maxValue: 5,
                        starSpacing: 0,
                        maxValueVisibility: false,
                        valueLabelVisibility: true,
                        animationDuration: const Duration(milliseconds: 1000),
                        valueLabelPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        valueLabelMargin: const EdgeInsets.only(right: 0),
                        starOffColor: const Color(0xffe7e8ea),
                        starColor: Colors.yellow,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppIcons.footballIcon,
                        fit: BoxFit.cover,
                        height: 16,
                        width: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Flexible(
                        child: Text(
                          'Futboll',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        AppIcons.summerTime,
                        fit: BoxFit.cover,
                        height: 16,
                        width: 16,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          allAdsItem.season,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        AppIcons.location,
                        height: 16,
                        width: 16,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Flexible(
                        child: Text(
                          allAdsItem.landmark,
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w300),
                          overflow: TextOverflow.visible,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          '${allAdsItem.price} sum',
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w700),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Image.asset(
                            AppIcons.likeIconBorder,
                            width: 20,
                            height: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
