import 'package:flutter/cupertino.dart';

class NormalController extends ChangeNotifier {
  int count = 0;

  increament(int? index) {
    count++;
    notifyListeners();
  }

  decreament(int? index) {
    count--;
    notifyListeners();
  }


}
