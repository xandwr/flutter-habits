import 'package:flutter_habits/models/goal.dart';

class Habit {
  String name;
  HabitType type;
  HabitFrequency frequency;
  int points;
  bool isCompleted;

  Habit({
    required this.name,
    required this.type,
    required this.frequency,
    required this.points,
    this.isCompleted = false,
  });

  void completeHabit(Goal targetGoal) {
    targetGoal.addPoints(points);
  }
}

enum HabitType {
  good,
  bad
}

enum HabitFrequency {
  single,
  multiple
}