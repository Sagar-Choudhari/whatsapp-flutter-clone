import 'package:flutter/material.dart';
import 'package:clone/view/home/home.dart';
import 'package:clone/viewmodel/app_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    AppViewModel appModel = AppViewModel();

    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: appModel.tealGreenLight,
          secondary: appModel.tealGreenDark,
        ),
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: appModel.tealGreenDark,
          secondary: appModel.tealGreenLight,
        ),
      ),
      home: Home(),
    );
  }
}
