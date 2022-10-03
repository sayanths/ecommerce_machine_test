import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommercetest/app/home_page/view/widgets/search.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    height: 45,
                    width: 55,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    child: Search(
                      size: size,
                    ),
                  ),
                ),
              ],
            ),
           ListTile(
            leading: Icon(Icons.place),
            title: Text("Delivery to"),
            subtitle: Text("Yelahanka,Banglore"),
            trailing: TextButton(onPressed: (){}, child: Text("Change")),
           ),
            Divider(
              height: 1,
              thickness: 1,
            ),
            Container(
              height: 30,
              width: 400,
              color: Color.fromARGB(255, 206, 246, 120),
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text("Delivery by oct 5",textAlign: TextAlign.start,),
              ),
            ),
             CarouselSlider(
  options: CarouselOptions(height: 180.0),
  items: [1,2,3,4,5].map((i) {
    return Builder(
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            color: Colors.amber
          ),
         /// child: Text('text $i', style: TextStyle(fontSize: 16.0),)
        );
      },
    );
  }).toList(),
)
          ],
        ),
      ),
    );
  }
}
