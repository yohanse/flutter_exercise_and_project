import 'package:flutter/material.dart';
import 'question.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Icon> Score = [];

 List<Question> question = [
   Question('fuck off', true),
   Question('bitch', false),
   Question('slack off', true),
   Question('dance off', false),
 ];

 Icon right = Icon(
   Icons.check,
   color: Colors.green,
 );

 Icon wrong = Icon(
    Icons.close,
    color: Colors.red,
  );

  int question_number  = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           Expanded(
            flex: 5,
            child: Center(
              child: Text(
                  question[question_number].question,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {

                    if(question[question_number].answer == true){
                      Score.add(right);
                    }
                    else{
                      Score.add(wrong);
                    }
                    question_number += 1;
                    if(question_number == question.length){
                      question_number -= 1;
                    }
                  });
                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: const Text("True"),
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    if(question[question_number].answer == false){
                      Score.add(right);
                    }
                    else{
                      Score.add(wrong);
                    }
                    question_number += 1;
                    if(question_number == question.length){
                      question_number -= 1;
                    }
                  });


                },
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: const Text("False"),
              ),
            ),
          ),

          Row(
            mainAxisSize: ,
            children: Score,
          ),
        ],
      ),
    );
  }
}
