import 'package:flutter/material.dart';
import 'package:flutter_app/question_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz',
            style: TextStyle(color: Colors.black,fontSize: 30.0),
          ),
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: .0),
                child: Text(
                  'Welcome to the first quiz of too many\n '
                  'Please note that this quiz considered as a late submit I must apology for that but things happened can\'t be helped led to this awkward situation so please accept my apology <3'
                  '\n I hope you get my apology and more importantly you accept it'
                  '\n\n ',
                  textAlign: TextAlign.center,

                  style: TextStyle(color: Colors.lightGreen, fontSize: 30.0),
                ),

              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 60.0),
                  child:Text(
                  'Note that this quiz is MCQ and more importantly you the answer will be shown once you answer each question ',
                  style: TextStyle(color: Colors.red,fontSize: 30.0),
                  ),
              ),


              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionScreen(0)),
                  );
                },
                child: Container(
                  width: 250.0,
                  height: 70.0,
                  child: Center(
                      child: Text(
                    'Start Quiz',
                    style: TextStyle(fontSize: 40.0),
                  )),
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
