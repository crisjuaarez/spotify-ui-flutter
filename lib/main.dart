import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/my_app.dart';

void main() {
  //Icons from the tool bar in white color
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
  );
  runApp(const MyApp());
}
