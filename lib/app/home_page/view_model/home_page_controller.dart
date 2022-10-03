import 'package:ecommercetest/app/home_page/model/model.dart';
import 'package:ecommercetest/app/home_page/service/api_service.dart';

import 'package:ecommercetest/app/normal_category/view/normal_category.dart';
import 'package:ecommercetest/app/permium/view/premium.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomePageController extends ChangeNotifier {
  HomePageController() {
    fetchData();
  }
  List<FruitsModel?> model = [];
  bool newValue = false;
  int defaultChoicIndex = 0;
  final list = [
    'https://img.freepik.com/premium-psd/healthy-food-banner-fruits-berries-isolated-white-background_88281-5691.jpg?w=2000',
    'https://previews.123rf.com/images/vectorgift/vectorgift1707/vectorgift170700026/81511970-summer-sale-banner-with-pieces-of-ripe-fruit-berries-on-colorful-background-vector-eps-10-format.jpg',
    'https://static.vecteezy.com/system/resources/previews/001/072/259/non_2x/summer-sale-banner-with-fruit-vector.jpg',
    'https://as2.ftcdn.net/v2/jpg/04/21/31/83/1000_F_421318303_9Lar98ARJ4jYsGsF3VJQWhKxo1Bm0i30.jpg',
  ];

  List<String> choiceList = [
    'Normal',
    'Permium',
  ];

  void choicChi(bool value, int index) {
    newValue = value;
    defaultChoicIndex = index;
    notifyListeners();
  }

  List<Widget> choiceListWidget = [
    Consumer<HomePageController>(
      builder: (context, value, _) {
        return ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              // final data = value.model[index];
              return const NormalCategoryWidget();
            });
      },
    ),
    Consumer<HomePageController>(
      builder: (context, value, _) {
        return ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const PermiumListTile();
            });
      },
    )
  ];

  // fetchData() async {
  //   FruitsModel? response = await ServiceApi().getAPI();

  //   if (response != null) {
  //        model.clear();
  //       model.addAll(response);

  //       notifyListeners();

  //    } else {
  //       print("ds");
  //     }
  //   }
  String url = 'https://run.mocky.io/v3/f5dfb61d-cee5-4717-8359-c5e3869fa3ec';
  fetchData() async {
    var response = await DioService().getMethod(url: url);

    if (response.statusCode == 200) {
      response.data.forEach(
        (element) {
          model.add(FruitsModel.fromJson(element));
        },
      );
      notifyListeners();
    }
  }
}
