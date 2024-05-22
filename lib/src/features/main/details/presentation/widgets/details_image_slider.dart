import 'package:carousel_slider/carousel_slider.dart';
import 'package:find_football/src/core/consts/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DetailsImageSlider extends StatefulWidget {

  final List<String> imageList;


  const DetailsImageSlider({required this.imageList, super.key});

  @override
  State<DetailsImageSlider> createState() => _DetailsImageSliderState();
}

class _DetailsImageSliderState extends State<DetailsImageSlider> {

  final CarouselController buttonCarouselController = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          top: 0,
          left: 0,
          right: 0,
          child: CarouselSlider(
            options: CarouselOptions(
                enlargeCenterPage: true,
                viewportFraction: 1,
                autoPlay: false,
                aspectRatio: 2/3,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                initialPage: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }
            ),
            disableGesture: true,
            carouselController: buttonCarouselController,
            items: widget.imageList.map((item) => Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Colors.grey,
              child: Image.asset(item, fit: BoxFit.cover,),
            ))
                .toList(),
          ),
        ),

        Positioned(
          bottom: 8,
          right: 0,
          left: 0,
          child:  Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: widget.imageList.asMap().entries.map((entry) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: GestureDetector(
                  onTap: () => buttonCarouselController.animateToPage(entry.key),
                  child:
                  Container(
                    width: 12.0,
                    height: 12.0,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: AppColors.appBakColor.withOpacity(0.4), width: 1)
                    ),
                    child: _current == entry.key ?  Container(
                      width: 4.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : Colors.black)
                              .withOpacity(_current == entry.key ? 0.9 : 0.4)),) : const SizedBox(),
                  ),
                ),
              );
            }).toList(),
          ),)
      ],
    );;
  }
}
