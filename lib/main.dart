import 'package:ecommerce/features/category/screens/category_details.dart';
import 'package:ecommerce/features/homepage/contoller/home_controller.dart';
import 'package:get/get.dart';

import 'component/navigationbar.dart';

import 'features/cart/screens/finishing.dart';
import 'features/favorite/screens/favorite.dart';
import 'features/homepage/screens/home.dart';
import 'features/homepage/screens/product_detail.dart';
import 'screens/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(HomeScreenController());
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: CustomNavigationBar(),
      // initialRoute: '/splash',
      debugShowCheckedModeBanner: false,

      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/home', page: () => Home()),
        GetPage(name: '/favorite', page: () => Favorite()),
        GetPage(name: '/product_detail', page: () => ProductDetail()),
        GetPage(name: '/finishing_the_order', page: () => FinishingTheOrder()),
        GetPage(name: '/navigation_bar', page: () => CustomNavigationBar()),
        // GetPage(name: '/category_detail', page: ()=>CategoryDetail())
      ],
    );
  }
}
