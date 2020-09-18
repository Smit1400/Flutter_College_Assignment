import 'package:custom_widget/custom_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: MainApp(),
  ));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[400],
      appBar: AppBar(
        backgroundColor: Colors.indigo[400],
        title: Text('BMI Calculator'),
      ),
      body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: CustomWidget(
                        color: Colors.indigo[700],
                        child: IconWidget(
                          icon: Icon(
                            FontAwesomeIcons.male,
                            size: 50,
                            color: Colors.white,
                          ),
                          text: Text(
                            'Male',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: CustomWidget(
                        color: Colors.indigo,
                        child: IconWidget(
                          icon: Icon(
                            FontAwesomeIcons.female,
                            size: 50,
                            color: Colors.white,
                          ),
                          text: Text(
                            'Female',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: CustomWidget(
                  color: Colors.indigo,
                  child: Icon(Icons.bookmark, size: 25, color: Colors.amber),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: CustomWidget(
                        color: Colors.indigo,
                        child:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      ),
                    ),
                    Expanded(
                      child: CustomWidget(
                        color: Colors.indigo,
                        child:
                            Icon(Icons.bookmark, size: 25, color: Colors.amber),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: FlatButton(
          onPressed: () {},
          color: Colors.red[300],
          child: Text(
            'Calculate',
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final Text text;
  final Icon icon;

  IconWidget({Key key, this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: 5,
        ),
        text
      ],
    );
  }
}
