import 'package:flutter/material.dart';
import 'package:flutter_habits/models/habit.dart';
import 'package:input_quantity/input_quantity.dart';

class HabitListItem extends StatelessWidget {
  final String name;
  final HabitType type;
  final HabitFrequency frequency;
  final int points;

  const HabitListItem({
    super.key,
    required this.name,
    required this.type,
    required this.frequency,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildCompleter(),
            const SizedBox(width: 16),
            _buildInfo(),
            _buildPoints(),
          ],
        ),
      ),
    );
  }

  /// Displays an icon based on whether the habit is good or bad
  Widget _buildIcon() {
    return Icon(
      type == HabitType.good ? Icons.thumb_up : Icons.thumb_down,
      color: type == HabitType.good ? Colors.green : Colors.red,
      size: 18,
    );
  }

  /// Displays the corresponding completion mechanism for the habit
  Widget _buildCompleter() {
    return SizedBox(
      width: 50,  // Set a fixed width
      height: 50, // Set a fixed height
      child: frequency == HabitFrequency.single 
        ? Checkbox(
            value: false, 
            onChanged: (newValue) {
              print(newValue);
            },
          )
        : InputQty.int(
            initVal: 0,
            minVal: 0,
            steps: 1,
            onQtyChanged: (val) {
              print(val);
            },
            decoration: const QtyDecorationProps(
              qtyStyle: QtyStyle.btnOnRight,
              orientation: ButtonOrientation.vertical,
            ),
          ),
    );
  }

  /// Displays habit name and frequency
  Widget _buildInfo() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                name,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(width: 8),
              _buildIcon(),
            ],
          ),
        ],
      ),
    );
  }

  /// Displays the number of points awarded for the habit
  Widget _buildPoints() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '$points points',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
      ],
    );
  }
}
