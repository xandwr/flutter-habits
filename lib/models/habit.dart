class Habit {
  String name;
  HabitType type;
  HabitFrequency frequency;
  int points;

  Habit({
    required this.name,
    required this.type,
    required this.frequency,
    required this.points,
  });
}

enum HabitType {
  good,
  bad
}

enum HabitFrequency {
  single,
  multiple
}