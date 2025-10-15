import 'package:flutter/material.dart';
import 'package:responsive_text_design/resources/styles_manager.dart';

class LowerPartInDrawer extends StatelessWidget {
  const LowerPartInDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.settings, color: Color(0xff4EB7F2)),
                title: Text('Setting system', style: StylesManager.boldStyle16),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.logout, color: Color(0xff4EB7F2)),
                title: Text('Logout account', style: StylesManager.boldStyle16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
