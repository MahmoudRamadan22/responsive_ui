import 'package:flutter/material.dart';
import 'package:responsive_text_design/widgets/adaptive_layout.dart';
import 'package:responsive_text_design/widgets/desktop_layout.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
