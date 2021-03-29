import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Utils {
  static SystemUiOverlayStyle darkSystemUiOverlayStyle() {
    return Platform.isAndroid
        ? SystemUiOverlayStyle(
            systemNavigationBarColor: Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness: Brightness.dark,
          )
        : SystemUiOverlayStyle.dark;
  }

  static SystemUiOverlayStyle lightSystemUiOverlayStyle() {
    return Platform.isAndroid
        ? SystemUiOverlayStyle(
            systemNavigationBarColor: Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: Colors.transparent,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.dark,
          )
        : SystemUiOverlayStyle.light;
  }
}
