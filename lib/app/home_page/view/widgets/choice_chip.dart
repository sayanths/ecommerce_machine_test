import 'dart:js';

import 'package:ecommercetest/app/home_page/view_model/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChoiceChipWidget extends StatelessWidget {

  ChoiceChipWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ctrl = context.read<HomePageController>();
    return Wrap(
        spacing: 45,
        children: List.generate(ctrl.choiceList.length, (index) {
          return Consumer<HomePageController>(
            builder: (context, homePageProvider, _) {
              return ChoiceChip(
                labelPadding: EdgeInsets.all(2.0),
                label: Text(
                  ctrl.choiceList[index],
                  style: TextStyle(
                    color: ctrl.defaultChoicIndex == index
                        ? Color.fromARGB(255, 255, 255, 255)
                        : Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                selected: ctrl.defaultChoicIndex == index ? true : false,
                selectedColor: ctrl.defaultChoicIndex == index
                    ? Color.fromARGB(255, 11, 59, 233)
                    : Color.fromARGB(255, 255, 254, 254),
                onSelected: (value) {
                  homePageProvider.choicChi(value, index);
                },
                elevation: 15,
              );
            },
          );
        }));
  }
}
