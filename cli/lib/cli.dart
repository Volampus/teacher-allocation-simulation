import 'package:cli/subject.dart';
import 'package:cli/utils.dart';

void calculate() {
  var subjectList = [
    Subject(
        subjectName: 'Art', currentYr10: 21, currentYr11: 33, currentYr12: 15),
    Subject(
        subjectName: 'Biology',
        currentYr10: 198,
        currentYr11: 95,
        currentYr12: 26),
    Subject(
        subjectName: 'Chemistry',
        currentYr10: 59,
        currentYr11: 126,
        currentYr12: 109),
    Subject(
        subjectName: 'English',
        currentYr10: 183,
        currentYr11: 155,
        currentYr12: 151),
    Subject(
        subjectName: 'Foreign Languages',
        currentYr10: 111,
        currentYr11: 104,
        currentYr12: 68),
    Subject(
        subjectName: 'Mathematics',
        currentYr10: 184,
        currentYr11: 201,
        currentYr12: 262),
    Subject(
        subjectName: 'Music',
        currentYr10: 20,
        currentYr11: 26,
        currentYr12: 49),
    Subject(
        subjectName: 'Physics',
        currentYr10: 50,
        currentYr11: 58,
        currentYr12: 183),
    Subject(
        subjectName: 'Social Studies',
        currentYr10: 183,
        currentYr11: 131,
        currentYr12: 59),
  ];

  var totalEnrollments = 0;
  for (var subject in subjectList) {
    subject.calculateNewYr10(
      totalCurrentEnrollments: 2860,
      totalNewEnrollments: 1755,
    );
    totalEnrollments +=
        subject.newYr10! + subject.currentYr10 + subject.currentYr11;
  }
  var classesPerStudent = totalEnrollments / 631;

  splitTeachersAmongSubjects(subjectList, 38);
  for (var subject in subjectList) {
    print(subject);
  }
  print("Classes per student $classesPerStudent");
}
