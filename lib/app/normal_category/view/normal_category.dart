import 'package:ecommercetest/app/core/colors.dart';
import 'package:ecommercetest/app/core/widgets.dart';
import 'package:ecommercetest/app/home_page/model/model.dart';
import 'package:ecommercetest/app/home_page/view/widgets/counter.dart';
import 'package:ecommercetest/app/home_page/view_model/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NormalCategoryWidget extends StatelessWidget {
  final FruitsModel? data;
  const NormalCategoryWidget({
    Key? key,  this.data,
   // this.data,
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
                        "https://www.tasteofhome.com/wp-content/uploads/2018/01/exps10669_BCC1570481D6_RMS-2.jpg"),
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
                                    "54% off",
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
