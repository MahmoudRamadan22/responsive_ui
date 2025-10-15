import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_text_design/resources/app_images.dart';
import 'package:responsive_text_design/resources/styles_manager.dart';

class ExpansesMidRow extends StatefulWidget {
  const ExpansesMidRow({super.key});

  @override
  State<ExpansesMidRow> createState() => _ExpansesMidRowState();
}

class _ExpansesMidRowState extends State<ExpansesMidRow> {
  int selectedIndex = -1;
  final cards = [
    {
      'image': Assets.assetsImagesGroup237730,
      'type': 'Balance',
      'date': 'April 2022',
      'price': 20129.0,
    },
    {
      'image': Assets.assetsImagesCardReceive,
      'type': 'Income',
      'date': 'April 2022',
      'price': 12345.0,
    },
    {
      'image': Assets.assetsImagesCardSend,
      'type': 'Expenses',
      'date': 'April 2022',
      'price': 9823.0,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: List.generate(cards.length, (index) {
          final card = cards[index];
          final isSelected = selectedIndex == index;
          return Expanded(
            child: ExpansesCard(
              color: isSelected
                  ? const Color(0xff4EB7F2)
                  : const Color(0xffffffff),
              image: card['image'] as String,
              type: card['type'] as String,
              date: card['date'] as String,
              price: card['price'] as double,
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          );
        }),
      ),
    );
  }
}

class ExpansesCard extends StatelessWidget {
  const ExpansesCard({
    super.key,
    required this.color,
    required this.image,
    required this.type,
    required this.date,
    required this.price,
    this.onTap,
  });
  final Color color;
  final String image;
  final String type;
  final String date;
  final double price;
  final GestureTapCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(child: SvgPicture.asset(image)),
                      Expanded(
                        child: SvgPicture.asset(Assets.assetsImagesArrowRight),
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 24),
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(type, style: StylesManager.semiBoldStyle16),
                      Text(date, style: StylesManager.styleRegular14),
                      Text(
                        '\$$price',
                        style: StylesManager.semiBoldStyleWhite24,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
