import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailScreen({super.key, required this.exam});

  String timeUntilExam() {
    final now = DateTime.now();
    final diff = exam.dateTime.difference(now);

    final days = diff.inDays;
    final hours = diff.inHours % 24;

    return "$days дена, $hours часа";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(exam.subject)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Предмет: ${exam.subject}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text(
              "Датум: ${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year}",
            ),
            Text(
              "Време: ${exam.dateTime.hour}:${exam.dateTime.minute.toString().padLeft(2, '0')}",
            ),
            SizedBox(height: 10),
            Text("Простории: ${exam.rooms.join(", ")}"),
            SizedBox(height: 20),
            Text(
              "Преостанато време: ${timeUntilExam()}",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
