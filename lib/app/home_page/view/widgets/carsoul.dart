import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommercetest/app/home_page/view_model/home_page_controller.dart';
import 'package:flutter/material.dart';

class CustomCarsouleSlider extends StatelessWidget {
  const CustomCarsouleSlider({
    Key? key,
    required this.home,
  }) : super(key: key);

  final HomePageController home;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 180.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(
          milliseconds: 800,
        ),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
      ),
      items: home.list.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        i,
                      ),
                      fit: BoxFit.cover)),
            );
          },
        );
      }).toList(),
    );
  }
}
