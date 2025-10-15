import 'package:flutter/material.dart';
import 'package:responsive_text_design/resources/app_images.dart';
import 'package:responsive_text_design/widgets/custom_drawer_item.dart';

class MiddlePartInDrawer extends StatelessWidget {
  const MiddlePartInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: CustomDrawerItem(
              image: Assets.assetsImagesCategory2,
              title: 'Dashboard',
            ),
          ),
          Expanded(
            child: CustomDrawerItem(
              image: Assets.assetsImagesConvertCard,
              title: 'My Transaction',
            ),
          ),
          Expanded(
            child: CustomDrawerItem(
              image: Assets.assetsImagesGraph,
              title: 'Statistics',
            ),
          ),
          Expanded(
            child: CustomDrawerItem(
              image: Assets.assetsImagesWallet2,
              title: 'Wallet Account',
            ),
          ),
          Expanded(
            child: CustomDrawerItem(
              image: Assets.assetsImagesChart2,
              title: 'My Investments',
            ),
          ),
        ],
      ),
    );
  }
}
