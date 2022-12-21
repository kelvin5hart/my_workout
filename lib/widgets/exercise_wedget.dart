import 'package:flutter/material.dart';

class ExerciseIcon extends StatelessWidget {
  final String optionIcon;
  final String optionName;
  final Function onTap;

  ExerciseIcon({required this.optionIcon, required this.optionName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.deepPurpleAccent),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('assets/icons/$optionIcon.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              optionName,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}