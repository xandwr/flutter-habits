import 'package:flutter/material.dart';
import 'package:flutter_habits/components/habit_list_item.dart';
import 'package:flutter_habits/models/habit.dart';

class HabitListScreen extends StatelessWidget {
  // A list of habits that will be displayed on the screen
  final List<Habit> habits;

  const HabitListScreen({super.key, required this.habits});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Habits'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: habits.length,
        itemBuilder: (context, index) {
          final habit = habits[index];
          return HabitListItem(
            name: habit.name,
            type: habit.type,
            frequency: habit.frequency,
            points: habit.points,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your logic for adding a new habit
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
