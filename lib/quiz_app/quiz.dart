import 'package:college_app/models/question.dart';
import 'package:flutter/material.dart';

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Widget> score = [];
  List<Question> quests = [
    Question(question: "Everything in flutter is a Widget?", answer: true),
    Question(question: "Flutter is written in java language", answer: false),
    Question(
        question: "Flutter is written in dart programming language",
        answer: true),
  ];
  int currentIndex = 0;

  getQuestion() {
    return quests[currentIndex].question;
  }

  dialog() async{
   await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Quiz App!'),
            content: Text('You have reached the end of the questions!'),
            actions: [
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }

  getAnswer() {
    return quests[currentIndex].answer;
  }

  onPressed(bool ans) {
    if (getAnswer() == ans) {
      setState(() {
        if (currentIndex == (quests.length - 1)) {
          print("Inside");
          dialog();
          currentIndex = 0;
          score.clear();
          
        } else {
          currentIndex += 1;
          score.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        }
      });
    } else {
      setState(() {
        if (currentIndex == (quests.length - 1)) {
          print("Inside");
          dialog();
          currentIndex = 0;
          score.clear();
          
        } else {
          currentIndex += 1;
          score.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 7,
              child: Center(
                  child: Text(
                getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              )),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () => onPressed(true),
                color: Colors.green,
                child: Text(
                  'True',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: () => onPressed(false),
                color: Colors.red,
                child: Text(
                  'False',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: score,
              ),
            )
          ],
        ),
      ),
    );
  }
}
