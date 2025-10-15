import 'package:flutter/material.dart';
import 'package:responsive_text_design/resources/styles_manager.dart';

class AllExpansesRow extends StatefulWidget {
  const AllExpansesRow({super.key});

  @override
  State<AllExpansesRow> createState() => _AllExpansesRowState();
}

class _AllExpansesRowState extends State<AllExpansesRow> {
  String selectedValue = 'Daily';
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Expanded(
            child: Text("All Expanses", style: StylesManager.semiBoldStyle20),
          ),
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(12),
            ),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Align(
                alignment: Alignment.centerRight,
                child: DropdownButton<String>(
                  underline: SizedBox(),
                  borderRadius: BorderRadius.circular(8),
                  focusColor: Colors.white,
                  iconEnabledColor: Color(0xff064060),
                  value: selectedValue,
                  items: [
                    DropdownMenuItem(
                      value: 'Monthly',
                      child: Text(
                        "Monthly",
                        style: StylesManager.styleMedium16,
                      ),
                    ),
                    DropdownMenuItem(
                      value: 'Weekly',
                      child: Text("Weekly", style: StylesManager.styleMedium16),
                    ),
                    DropdownMenuItem(
                      value: 'Daily',
                      child: Text("Daily", style: StylesManager.styleMedium16),
                    ),
                  ],
                  onChanged: (onChanged) {
                    setState(() {
                      selectedValue = onChanged!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
