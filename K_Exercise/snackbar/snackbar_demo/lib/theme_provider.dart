import 'package:flutter/material.dart';
import 'package:snackbar_demo/theme2.dart';

class ThemeProvider with ChangeNotifier {
  bool _isselected = false;
  bool get isselected => _isselected;

  ThemeData _themeData = lightmode;
  ThemeData get themedata => _themeData;

  void toggleTheme() {
    if (_themeData == lightmode) {
      _themeData = darkmode;
    } else {
      _themeData = lightmode;
    }
    _isselected = !isselected;
    notifyListeners();
  }
}
