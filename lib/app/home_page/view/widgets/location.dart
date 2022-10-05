import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.place),
      title: const Text("Delivery to"),
      subtitle: const Text("Yelahanka,Banglore"),
      trailing: TextButton(
        onPressed: () {},
        child: const Text("Change"),
      ),
    );
  }
}


