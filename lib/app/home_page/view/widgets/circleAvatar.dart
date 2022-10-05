import 'package:ecommercetest/app/core/colors.dart';
import 'package:flutter/material.dart';

class CircleAvatarCustom extends StatelessWidget {
  const CircleAvatarCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 100,
      child: ListView.builder(
          padding: const EdgeInsets.all(2),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: ((context, index) {
            return const Padding(
              padding: EdgeInsets.all(2.0),
              child: CircleAvatar(
                backgroundColor: orange,
                radius: 40,
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: NetworkImage(
                      "https://www.irandriedfruit.com/wp-content/uploads/2019/06/Vegetables.jpg",
                    ),
                  ),
                ),
              ),
            );
          })),
    );
  }
}

