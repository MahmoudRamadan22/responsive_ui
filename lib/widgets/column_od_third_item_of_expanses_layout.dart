import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_text_design/resources/app_images.dart';
import 'package:responsive_text_design/resources/styles_manager.dart';

class ColumnOfThirdItemOfExpansesLayout extends StatelessWidget {
  const ColumnOfThirdItemOfExpansesLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(flex: 1, child: QuickInvoiceHeadLine()),
        Expanded(
          flex: 4,
          child: SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: LatestTransaction()),
                Expanded(flex: 2, child: CustomerNameField()),
                Expanded(flex: 2, child: CustomerNameField()),
                Expanded(flex: 2, child: LastButtons()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class LastButtons extends StatelessWidget {
  const LastButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Add more details",
                  style: StylesManager.semiBoldStyleBlue18,
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Color(0xff4EB7F2),
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text("Send Money", style: StylesManager.semiBoldStyle18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomerNameField extends StatelessWidget {
  const CustomerNameField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      " customer name",
                      style: StylesManager.styleMedium16,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type customer name",
                        hintStyle: StylesManager.styleRegular14,
                      ),
                      style: StylesManager.styleMedium16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      " customer name",
                      style: StylesManager.styleMedium16,
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Type customer name",
                        hintStyle: StylesManager.styleRegular14,
                      ),
                      style: StylesManager.styleMedium16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,

            child: Text(
              "Latest Transaction",
              style: StylesManager.styleMedium16,
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  child: ListTile(
                    leading: SvgPicture.asset(Assets.assetsImagesGroup),
                    title: Text(
                      "Madrani Andi",
                      style: StylesManager.semiBoldStyle16,
                    ),
                    subtitle: Text(
                      'Madraniadi20@gmail',
                      style: StylesManager.styleRegular12,
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    leading: SvgPicture.asset(Assets.assetsImagesGroup),
                    title: Text(
                      "Josua Nunito",
                      style: StylesManager.semiBoldStyle16,
                    ),
                    subtitle: Text(
                      'Josh Nunito@gmail.com',
                      style: StylesManager.styleRegular12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuickInvoiceHeadLine extends StatelessWidget {
  const QuickInvoiceHeadLine({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: Text('Quick Invoice', style: StylesManager.semiBoldStyle20),
          ),
          Expanded(child: Icon(Icons.add, color: Color(0xff4EB7F2))),
        ],
      ),
    );
  }
}
