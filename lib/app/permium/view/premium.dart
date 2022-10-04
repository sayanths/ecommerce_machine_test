import 'package:ecommercetest/app/home_page/model/model.dart';
import 'package:flutter/material.dart';
import 'package:ecommercetest/app/core/colors.dart';
import 'package:ecommercetest/app/core/widgets.dart';
import 'package:ecommercetest/app/home_page/view/widgets/counter.dart';

class PermiumListTile extends StatelessWidget {
  final FruitsModel? data;
  final String? premiumImages;
  const PermiumListTile({
    Key? key,
    this.data,
    this.premiumImages ,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 150,
        width: 150,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 150,
                    width: 100,
                    child: Image.network(
                        premiumImages.toString()),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: SizedBox(
                    height: 150,
                    width: 100,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(data!.pName.toString()),
                            const SizedBox(
                              width: 70,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.favorite)),
                          ],
                        ),
                        const Text("1 L"),
                        height10,
                        const Text("139"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 25,
                                width: 60,
                                color: green,
                                child: const Center(
                                  child: Text(
                                    "18% off",
                                  ),
                                ),
                              ),
                            ),
                            const CounterWidget(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
