import 'package:flutter/material.dart';

class PostProvider extends ChangeNotifier{

  TextEditingController search = TextEditingController();

  bool showText = false;

  int currentIndex = 0;

  void changeIndex(int index){
    currentIndex = index;
    notifyListeners();
  }

    void showAllContent(){
    showText = true;
    notifyListeners();
  }
}