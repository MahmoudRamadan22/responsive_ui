import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_text_design/widgets/home_view_body.dart';

void main() {
  runApp(DevicePreview(builder: (BuildContext context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
      debugShowCheckedModeBanner: false,
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeViewBody();
  }
}
