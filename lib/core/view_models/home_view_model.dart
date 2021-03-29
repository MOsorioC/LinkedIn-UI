import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  int _pageIndex = 0;

  int get pageIndex => _pageIndex;

  PageController _pageController = PageController(initialPage: 0);

  PageController get pageController => _pageController;

  void setPageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  void onItemTapped(int index) {
    _pageIndex = index;
    //_pageController.jumpToPage(index);
    notifyListeners();
  }

}