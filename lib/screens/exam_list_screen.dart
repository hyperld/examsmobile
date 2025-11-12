import 'package:flutter/material.dart';
import './exam_details_screen.dart';
import 'package:mislab1/widgets/exam_card.dart';
import 'package:mislab1/widgets/exam_count_badge.dart';
import '../models/exam.dart';
class ExamListScreen extends StatelessWidget {
  ExamListScreen({super.key});

  final List<Exam> exams = [
    Exam(
      subject: "Мобилни Апликации",
      dateTime: DateTime(2026, 2, 10, 9, 0),
      rooms: ["Лаб 1", "Лаб 2"],
    ),
    Exam(
      subject: "Оперативни Системи",
      dateTime: DateTime(2026, 2, 12, 12, 0),
      rooms: ["АМФ ИБ"],
    ),
    Exam(
      subject: "Бази на Податоци",
      dateTime: DateTime(2026, 2, 15, 8, 0),
      rooms: ["АМФ 1"],
    ),
    Exam(
      subject: "Алгоритми",
      dateTime: DateTime(2022, 2, 18, 10, 30),
      rooms: ["Лаб 5"],
    ),
    Exam(
      subject: "Дигитизација",
      dateTime: DateTime(2023, 2, 10, 9, 0),
      rooms: ["Лаб 1", "Лаб 2"],
    ),
    Exam(
      subject: "Вовед во наука за податоци",
      dateTime: DateTime(2024, 6, 20, 12, 0),
      rooms: ["Лаб 1", "Лаб 2"],
    ),
    Exam(
      subject: "Објектно Ориентирано Програмирање",
      dateTime: DateTime(2023, 2, 11, 15, 0),
      rooms: ["Лаб 1", "Лаб 2"],
    ),
    Exam(
      subject: "Структурно Програмирање",
      dateTime: DateTime(2026, 2, 16, 9, 0),
      rooms: ["Лаб 1", "Лаб 2"],
    ),
    Exam(
      subject: "Интернет Технологии",
      dateTime: DateTime(2026, 2, 12, 9, 0),
      rooms: ["Лаб 1", "Лаб 2"],
    ),
    Exam(
      subject: "Веб Програмирање",
      dateTime: DateTime(2022, 3, 3, 9, 0),
      rooms: ["Лаб 1", "Лаб 2"],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    exams.sort((a, b) => a.dateTime.compareTo(a.dateTime));
    return Scaffold(
      appBar: AppBar(
        title: Text("Распоред за испити - 216127"),
      ),
      body: ListView.builder(itemCount: exams.length, itemBuilder: (context, index) {
        return GestureDetector(onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ExamDetailScreen(exam: exams[index])));
        }, child: ExamCard(exam: exams[index]),);}),
      bottomNavigationBar: ExamCountBadge(examCount: exams.length),
    );
  }
}