class Subject {
  Subject({
    required this.subjectName,
    required this.currentYr10,
    required this.currentYr11,
    required this.currentYr12,
  });

  final String subjectName;
  int currentYr10;
  int currentYr11;
  int currentYr12;
  int? newYr10;

  void calculateNewYr10({
    required int totalCurrentEnrollments,
    required int totalNewEnrollments,
  }) {
    double weight =
        (currentYr10 + currentYr11 + currentYr12) / totalCurrentEnrollments;
    double newEnrollments = totalNewEnrollments * weight;
    newYr10 = newEnrollments.round();
  }
}

// 
