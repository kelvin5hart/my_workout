import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_workout/data/data.dart';
import 'package:my_workout/widgets/exercise_wedget.dart';
import 'package:my_workout/widgets/trainer_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentCard = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [Icon(Icons.drag_handle)],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi Fase',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'What will you do today?',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: CupertinoSearchTextField(
                padding: EdgeInsets.all(12),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 20, 0, 30),
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ExerciseIcon(
                    optionIcon: data[index].optionIcon,
                    optionName: data[index].optionIconName,
                    onTap: (){
                      setState(() {
                        currentCard = index;
                      });
                    },
                  );
                },
                itemCount: data.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Workouts Pack',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            TrainerCard(
                instructorPicture: data[currentCard].instructorPicture,
                instructorName: data[currentCard].instructorName,
                exerciseName: data[currentCard].exerciseName,
                optionIconName: data[currentCard].optionIconName,
                hours: data[currentCard].hours,
                experience: data[currentCard].experience)
          ],
        ),
      ),
    );
  }
}
