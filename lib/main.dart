import 'package:flutter/material.dart';
import 'package:flutter_habits/models/habit.dart';
import 'package:flutter_habits/screens/habit_list_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HabitListScreen(
        habits: [
          Habit(name: "Workout", type: HabitType.good, frequency: HabitFrequency.single, points: 10),
          Habit(name: "Smoking", type: HabitType.bad, frequency: HabitFrequency.multiple, points: -5),
        ]
      ),
    );
  }
}
