import 'package:flutter/material.dart';
import 'package:responsive_text_design/widgets/all_expanses_row.dart';
import 'package:responsive_text_design/widgets/column_od_third_item_of_expanses_layout.dart';
import 'package:responsive_text_design/widgets/expanses_mid_row.dart';

class ExpansesView extends StatelessWidget {
  const ExpansesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Expanded(flex: 1, child: AllExpansesRow()),
          Expanded(flex: 2, child: ExpansesMidRow()),
          Expanded(flex: 4, child: ColumnOfThirdItemOfExpansesLayout()),
        ],
      ),
    );
  }
}
