import 'package:flutter/material.dart';

import '../screens/home.dart';
import '../screens/library.dart';
import '../screens/search.dart';

int _currentIndex = 0;

class NavProvider with ChangeNotifier {
  int get currentIndex => _currentIndex;
  List<Widget> pages = [
    const Home(),
    const Search(),
    const Library(),
  ];
  set setIndex(int value) {
    _currentIndex = value;
    notifyListeners();
  }

  Widget get currentPage => pages[_currentIndex];
}
