
import 'package:flutter/material.dart';

import '../question17/question_17.dart';

class Question26 extends StatelessWidget {
  const Question26({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Question 26'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Question17(),
                    ));
              },
              child: Text('Click to Redirect'),
            )
          ],
        ),
      ),
    );
  }
}