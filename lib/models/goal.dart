class Goal {
  String name;
  int targetPoints;
  int currentPoints;

  Goal({
    required this.name,
    required this.targetPoints,
    required this.currentPoints,
  });

  void addPoints(int points) {
    currentPoints += points;
  }
}