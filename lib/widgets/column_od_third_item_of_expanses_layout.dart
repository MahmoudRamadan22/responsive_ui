import 'package:flutter/material.dart';

class ColumnOfThirdItemOfExpansesLayout extends StatelessWidget {
  const ColumnOfThirdItemOfExpansesLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SizedBox(
            child: Row(
              children: [
                Expanded(child: Text('Quick Invoice')),
                Expanded(child: Text("here button not text")),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Expanded(child: Text("Latest Transaction")),
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(child: ListTile()),
                      Expanded(child: ListTile()),
                      Expanded(child: ListTile()),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text("Customer name"),
                            Text("Type customer name"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("Customer name"),
                            Text("Type customer name"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text("Item name"),
                            Text("Type customer name"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("Item mount"),
                            Text("dropdown for usd"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("add more details"),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Send Money"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
