import 'package:ecommercetest/app/core/colors.dart';
import 'package:ecommercetest/app/core/widgets.dart';
import 'package:ecommercetest/app/home_page/view/widgets/counter.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
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
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXjMVAUsG7PXi_WJt9L-TJrS0YKBOae4cD6jfqlmCY-o-uYg0hjW6MsgJLTf09_6uD6A4&usqp=CAU"),
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
                            const Text("Mr. Gold Sunflower "),
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
