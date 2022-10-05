import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommercetest/app/core/colors.dart';
import 'package:ecommercetest/app/home_page/view/widgets/app_bar.dart';
import 'package:ecommercetest/app/home_page/view/widgets/carsoul.dart';

import 'package:ecommercetest/app/home_page/view/widgets/choice_chip.dart';
import 'package:ecommercetest/app/home_page/view/widgets/choicechip.dart';
import 'package:ecommercetest/app/home_page/view/widgets/circleAvatar.dart';
import 'package:ecommercetest/app/home_page/view/widgets/divider.dart';
import 'package:ecommercetest/app/home_page/view/widgets/highlight_heading_widget.dart';
import 'package:ecommercetest/app/home_page/view/widgets/location.dart';

import 'package:ecommercetest/app/home_page/view/widgets/search.dart';
import 'package:ecommercetest/app/home_page/view_model/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final home = context.read<HomePageController>();
    log(home.toString());
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            CustomAppBar(size: size),
            const LocationWidget(),
            const CustomDivider(),
            CustomCarsouleSlider(home: home),
            const HighLightHeadingWidget(),
            const CustomDivider(),
            const CircleAvatarCustom(),
            const CustomDivider(),
            const ChoiceChipSelectionWidget(),
            const ChoiceChipSelectionPages(),
          ],
        ),
      ),
    );
  }
}

