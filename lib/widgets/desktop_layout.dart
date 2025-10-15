import 'package:flutter/material.dart';
import 'package:responsive_text_design/widgets/cutom_drawer.dart';
import 'package:responsive_text_design/widgets/expanses.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        Expanded(flex: 3, child: ExpansesView()),
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.amber,
            child: Center(child: Text("third layout")),
          ),
        ),
      ],
    );
  }
}
