import 'package:flutter/material.dart';
import 'package:responsive_text_design/widgets/lower_part_in_drawer.dart';
import 'package:responsive_text_design/widgets/middle_part_in_drawer.dart';
import 'package:responsive_text_design/widgets/upper_part_in_drawer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Drawer(
        backgroundColor: Colors.white,
        shape: BeveledRectangleBorder(),
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(flex: 1, child: UpperPartInDrawer()),
              Expanded(flex: 2, child: MiddlePartInDrawer()),
              Expanded(flex: 1, child: Container(color: Colors.white)),
              Expanded(flex: 1, child: LowerPartInDrawer()),
            ],
          ),
        ),
      ),
    );
  }
}
