import 'package:flutter/material.dart';

class Exercise {
  String optionIcon;
  String optionIconName;
  String exerciseName;
  String instructorName;
  String instructorPicture;
  String hours;
  String experience;

  Exercise(
      {required this.optionIcon,
      required this.optionIconName,
      required this.instructorName,
      required this.exerciseName,
      required this.instructorPicture,
      required this.hours,
      required this.experience});
}
