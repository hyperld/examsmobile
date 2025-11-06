import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamCard extends StatelessWidget {
  final Exam exam;
  const ExamCard({Key? key, required this.exam}) : super(key: key);
  bool get isPast => exam.dateTime.isBefore(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Card(
      color: isPast ? Colors.red[100] : Colors.green[100],
      child: ListTile(
        leading: Icon(
          Icons.book,
          color: isPast ? Colors.red[900] : Colors.green[900],
        ),
        title: Text(
          exam.subject,
          style: TextStyle(
            color: isPast ? Colors.red[900] : Colors.green[900],
            fontWeight: FontWeight.bold
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  size: 16,
                  color: isPast ? Colors.red[700] : Colors.green[700],
                ),
                const SizedBox(width: 4),
                Text(
                  '${exam.dateTime.day}/${exam.dateTime.month}/${exam.dateTime.year}',
                  style: TextStyle(
                    color: isPast ? Colors.red[700] : Colors.green[700]
                  ),
                ),
                const SizedBox(width: 8),
                Icon(
                  Icons.access_time,
                  size: 16,
                  color: isPast ? Colors.red[700] : Colors.green[700],
                ),
                const SizedBox(width: 4),
                Text(
                  '${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}',
                  style: TextStyle(
                    color: isPast ? Colors.red[700] : Colors.green[700]
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.room,
                  size: 16,
                  color: isPast ? Colors.red[700] : Colors.green[700],
                ),
                const SizedBox(width: 4),
                Text(
                  'Rooms: ${exam.rooms.join(", ")}',
                  style: TextStyle(
                    color: isPast ? Colors.red[700] : Colors.green[700]
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
