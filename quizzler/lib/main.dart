import 'package:flutter/material.dart';
import 'package:quizzler/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'questions.dart';
import 'quizBrain.dart';

// object from quizbrain class
QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(Quizzler());
}

class Quizzler extends StatefulWidget {
  @override
  _QuizzlerState createState() => _QuizzlerState();
}

class _QuizzlerState extends State<Quizzler> {
// the icons keepinglist
  List<Widget> scoreKeeper = [];

  // function that checks whether the correct answer is matched with the user picked answer
  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.isFinished() == true) {
        // alert package
        Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();

        // reset the question number
        quizBrain.resettingQNumber();
        // resetting Icon List
        scoreKeeper = [];
      } else {
        if (quizBrain.getQuestionAnswer() == userPickedAnswer) {
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizBrain.increaseQNumber();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 8,
                  child: Center(
                    child: Text(
                      quizBrain.getQuestionText(),
                      style: TextStyle(fontSize: 30.0),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    color: Colors.green,
                    child: Text(
                      'Correct',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    onPressed: () {
                      checkAnswer(true);
                    },
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  flex: 1,
                  child: FlatButton(
                    color: Colors.red,
                    child: Text(
                      'Wrong',
                      style: TextStyle(fontSize: 25.0),
                    ),
                    onPressed: () {
                      checkAnswer(false);
                    },
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: scoreKeeper,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
