import 'package:flutter/material.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key? key,
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
          child: IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        ),
        const Text("0"),
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
