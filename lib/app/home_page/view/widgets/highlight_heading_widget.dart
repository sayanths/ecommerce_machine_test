import 'package:flutter/material.dart';

class HighLightHeadingWidget extends StatelessWidget {
  const HighLightHeadingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child:
          Align(alignment: Alignment.centerLeft, child: Text("Latest",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
    );
  }
}
