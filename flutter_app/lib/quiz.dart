import 'package:flutter_app/finalpage.dart';
import 'package:flutter_app/question.dart';


 class Quiz {
   int questionNumber = 0;
   List<Question> quiz = [
     Question('All roads lead to Rome', true, 1),
     Question(
         'Seahorses have stomachs for the absorption of nutrients from food',
         false, 2),
     Question('The letter H is between letters G and J on a keyboard', true, 3),
     Question('Camels have three sets of eyelashes', true, 4),
     Question('There are five zeros in one hundred thousand', true, 5),
     Question('you enjoyed,didn\'t you ?', true, 6),

   ];

   void nextQuestion(questionNumber){
     if(questionNumber<quiz.length){
       questionNumber++;
     }
   }


}