import 'package:custom_widget/custom_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      ),
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      )
                    ],
                  ),
                  CustomWidget(
                    color: Colors.blueGrey,
                    icon: Icon(Icons.bookmark, size: 25, color: Colors.amber),
                  ),
                  Row(
                    children: [
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      ),
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      ),
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      ),
                      CustomWidget(
                        color: Colors.blueGrey,
                        icon:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
