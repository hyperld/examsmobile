import 'package:flutter/material.dart';

class ExamCountBadge extends StatelessWidget {
  final int examCount;

  const ExamCountBadge({
    Key? key,
    required this.examCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: const EdgeInsets.all(16),
      child: Text(
        'Total Exams: $examCount',
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}