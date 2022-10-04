import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:ecommercetest/app/home_page/model/model.dart';

import 'package:ecommercetest/app/normal_category/view/normal_category.dart';
import 'package:ecommercetest/app/permium/view/premium.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomePageController extends ChangeNotifier {
  HomePageController() {
    fetchData();
  }
  List<FruitsModel?> model = [];
  List<FruitsModel?> normal = [];
  List<FruitsModel?> premuim = [];
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
            itemCount: value.normal.length,
            itemBuilder: (context, index) {
              final data = value.normal[index];
              final localImage = value.normalImage[index];
              return NormalCategoryWidget(data: data, localImg: localImage);
            });
      },
    ),
    Consumer<HomePageController>(
      builder: (context, value, _) {
        return ListView.builder(
            itemCount: value.premuim.length,
            itemBuilder: (context, index) {
              final data = value.premuim[index];
              final localImage = value.premiumImage[index];
              return PermiumListTile(
                data: data,
                premiumImages: localImage,
              );
            });
      },
    )
  ];

  String url = 'https://run.mocky.io/v3/f5dfb61d-cee5-4717-8359-c5e3869fa3ec';
  fetchData() async {
    Response response = await Dio().get(url);
    log(response.toString());
    if (response.statusCode == 200) {
      response.data.forEach(
        (element) {
          model.clear();
          model.add(FruitsModel.fromJson(element));
          filteredData();
          filteredDataNormal();
        },
      );
      notifyListeners();
    }
  }

  filteredData() {
    for (var element in model) {
      if (element?.pCategory == 'Premium') {
        premuim.add(element);
      }
    }
    log(premuim.toString());
  }

  filteredDataNormal() {
    for (var item in model) {
      if (item?.pCategory != 'Premium') {
        normal.add(item);
        notifyListeners();
      }
    }
    log(normal.toString());
  }

  List normalImage = [
    'https://upload.wikimedia.org/wikipedia/commons/9/90/Hapus_Mango.jpg',
    'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg?w=2000',
  ];

  List premiumImage = [
    'https://www.collinsdictionary.com/images/full/apple_158989157.jpg',
    'https://media.istockphoto.com/photos/orange-slice-picture-id1163872349?k=20&m=1163872349&s=612x612&w=0&h=1oVhcd6gYzgvDCVJVqJN_6mPUnHCd9uYQk5rZ3Il_9s=',
  ];
}
