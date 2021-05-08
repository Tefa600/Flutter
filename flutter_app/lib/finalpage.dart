import 'package:flutter/material.dart';
import 'question_screen.dart';
class finalpage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(


              'Congratulations you have finished the quiz, We hope you did a good job back there and your  is $score ',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.green,fontSize: 40.0, ),
            )

          ],
        ),
      ),
    );
  }


}


}
