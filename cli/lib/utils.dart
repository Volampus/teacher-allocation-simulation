import 'package:cli/subject.dart';

void splitTeachersAmongSubjects(List<Subject> subjects, int teachers) {
  var sum = 0;
  for (var x in subjects) {
    sum += x.newYr10! + x.currentYr10 + x.currentYr11;
  }

  double diff = 0;

  for (int i = 0; i < subjects.length; ++i) {
    double v = teachers *
        (subjects[i].newYr10! +
            subjects[i].currentYr10 +
            subjects[i].currentYr11) /
        sum;
    int value = v.round();
    diff += v - value;

    if (diff >= 0.5) {
      value += 1;
      diff -= 1;
    } else if (diff <= -0.5) {
      value -= 1;
      diff += 1;
    }

    subjects[i].allocatedTeachers = value;
  }
}
