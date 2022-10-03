import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommercetest/app/home_page/view/widgets/choice_chip.dart';
import 'package:ecommercetest/app/home_page/view/widgets/search.dart';
import 'package:ecommercetest/app/home_page/view_model/home_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 45,
                    width: 55,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 15),
                    child: Search(
                      size: size,
                    ),
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.place),
              title: const Text("Delivery to"),
              subtitle: const Text("Yelahanka,Banglore"),
              trailing: TextButton(
                onPressed: () {},
                child: const Text("Change"),
              ),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 180.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.amber),

                      /// child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                    );
                  },
                );
              }).toList(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child:
                  Align(alignment: Alignment.centerLeft, child: Text("Latest")),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            LimitedBox(
              maxHeight: 100,
              child: ListView.builder(
                  padding: const EdgeInsets.all(2),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: ((context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.orange,
                        radius: 40,
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundColor: Color.fromARGB(255, 181, 244, 54),
                          ),
                        ),
                      ),
                    );
                  })),
            ),
            const Divider(
              height: 1,
              thickness: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ChoiceChipWidget(),
              ],
            ),
            LimitedBox(
                maxHeight: 450,
                child: Consumer<HomePageController>(
                  builder: (context, value, _) {
                    return ListView.separated(
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 3,);
                      },
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 150,
                          width: 150,
                          color: Colors.red,
                        );
                      },
                    );
                  },
                )),
               
          ],
        ),
      ),
    );
  }
}
