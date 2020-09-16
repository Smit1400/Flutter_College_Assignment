import 'package:flutter/foundation.dart';

class Question {
  final String question;
  final bool answer;
  Question({this.question, this.answer});

  bool check(bool ans) {
    return ans == this.answer ? true : false;
  }
}
