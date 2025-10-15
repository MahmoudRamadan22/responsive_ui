import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_text_design/resources/styles_manager.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: Text(title, style: StylesManager.boldStyle16),
      ),
    );
  }
}
