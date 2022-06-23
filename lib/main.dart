import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:restaurants_app/detail_screen.dart';
import 'main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pecel Lele',
      theme: ThemeData(),
      home: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'OpenSans'),
        initialRoute: '/',
        getPages: [
          //* * Not Auth
          GetPage(name: '/', page: () => MainScreen()),
          GetPage(name: '/detail-screen/:id', page: () => DetailScreen()),
        ],
      ),
    );
  }
}
