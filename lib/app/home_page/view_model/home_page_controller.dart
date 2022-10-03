import 'package:ecommercetest/app/cart/view/cart.dart';
import 'package:flutter/cupertino.dart';

class HomePageController extends ChangeNotifier {
  bool newValue = false;
  int defaultChoicIndex = 0;
  final list = [
    'https://img.freepik.com/premium-psd/car-social-media-instagram-post-square-web-banner-advertising-template_177160-364.jpg?w=2000',
    'https://img.etimg.com/photo/msid-81432986,imgsize-387481/BMWEmbed1.jpg',
    'http://www.blog.sagmart.com/wp-content/uploads/2014/10/91449abd-0eca-448b-94c2-aff487fda545.jpg',
  ];

  List<String> choiceList = [
    'Tamilnadu',
    'Permium',
  ];

  void choicChi(bool value, int index) {
    newValue = value;
    defaultChoicIndex = index;
    notifyListeners();
  }

  List<Widget> choiceListWidget = [
    const ReviwCart(),
    const ReviwCart(),
  ];
}
