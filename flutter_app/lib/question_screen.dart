import 'package:flutter/material.dart';
import 'package:flutter_app/quiz.dart';

import 'finalpage.dart';

class QuestionScreen extends StatefulWidget {
  final int index;

  QuestionScreen(this.index);
  @override
  _QuestionScreenState createState() => _QuestionScreenState();
}



class _QuestionScreenState extends State<QuestionScreen> {
  Quiz myquiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;
   int score=0;
  static int x = 6;

  void getScore()=>score;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Question ${num}'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              myquiz.quiz[widget.index].question,
              style: TextStyle(color: Colors.amber, fontSize: 30.0),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.green,
                size: 50.0,
              ),
              visible: isCorrect,
              replacement: Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.red,
                  size: 50.0,
                ),
                visible: isWrong,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () {
                    if (myquiz.quiz[widget.index].answer == true)
                      score=score+10;
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                      });
                    else
                      setState(() {
                        isCorrect = false;
                        isWrong = true;
                      });
                  },
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Center(
                        child: Text(
                      'true',
                      style: TextStyle(fontSize: 40.0),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    if (myquiz.quiz[widget.index].answer == false)
                      score=score+10;

                    setState(() {
                        isWrong = false;
                        isCorrect = true;
                      });
                    else
                      setState(() {
                        isWrong = true;
                        isCorrect = false;
                      });
                  },
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Center(
                        child: Text(
                      'False',
                      style: TextStyle(fontSize: 40.0, color: Colors.black),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                )
              ],
            ),
            MaterialButton(
              onPressed: () {
                if (widget.index + 1 < x) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(widget.index + 1),

                    ),
                  );
                } else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => finalpage(),
                      ));
                }
              },
              child: Container(
                width: 250.0,
                height: 70.0,
                child: Center(
                    child: Text(
                  'Next',
                  style: TextStyle(fontSize: 40.0),
                )),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
