import 'package:ecommercetest/app/home_page/model/model.dart';
import 'package:ecommercetest/app/normal_category/view_model/normal_cat_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterWidget extends StatelessWidget {
  final FruitsModel? data;
  const CounterWidget({
    Key? key,
    this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          height: 35,
          width: 35,
          color: Colors.red,
          child: IconButton(
            onPressed: () {
              context.read<NormalController>().increament(data!.pId);
            },
            icon: const Icon(Icons.add),
          ),
        ),
         Text("1"),
        Container(
          margin: const EdgeInsets.all(10),
          height: 35,
          width: 35,
          color: const Color.fromARGB(255, 244, 218, 216),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.remove),
          ),
        ),
      ],
    );
  }
}
