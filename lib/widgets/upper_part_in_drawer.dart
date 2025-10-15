import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_text_design/resources/app_images.dart';
import 'package:responsive_text_design/resources/styles_manager.dart';

class UpperPartInDrawer extends StatelessWidget {
  const UpperPartInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              width: MediaQuery.sizeOf(context).width * .1,
              decoration: BoxDecoration(color: Colors.grey),
              child: Center(
                child: SvgPicture.asset(
                  Assets.assetsImagesGallery,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListTile(
              leading: SvgPicture.asset(Assets.assetsImagesFrame),
              title: FittedBox(
                fit: BoxFit.cover,
                child: Text(
                  'Mahmoud Ramadan',
                  style: StylesManager.semiBoldStyle16,
                ),
              ),
              subtitle: Text(
                "modymado112@gmail.com",
                style: StylesManager.styleRegular12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
