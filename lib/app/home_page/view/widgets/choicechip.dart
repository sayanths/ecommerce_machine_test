import 'package:ecommercetest/app/home_page/view/widgets/choice_chip.dart';
import 'package:ecommercetest/app/home_page/view_model/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChoiceChipSelectionWidget extends StatelessWidget {
  const ChoiceChipSelectionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ChoiceChipWidget(),
      ],
    );
  }
}

class ChoiceChipSelectionPages extends StatelessWidget {
  const ChoiceChipSelectionPages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 450,
      child: Consumer<HomePageController>(
        builder: (context, value, _) {
          return value.choiceListWidget[value.defaultChoicIndex];
        },
      ),
    );
  }
}

