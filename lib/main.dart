import 'package:external_packages_sample_sep26/View/Home%20Screen/home_screen.dart';
import 'package:external_packages_sample_sep26/View/image%20picker%20screen/image_picker_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImagePickerScreen(),
    );
  }
}
