import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:machuda_landing_page/src/ui/landing_page.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '맞추다',
      theme: ThemeData(
        fontFamily: 'NotoSansKR',
        primaryColor: const Color(0xFFC70D03),
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/' , page: ()=>const LandingPage())
      ],
    );
  }
}
