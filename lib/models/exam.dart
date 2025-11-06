class Exam {
  final String subject;       // Име на предмет
  final DateTime dateTime;    // Датум + време на испит
  final List<String> rooms;   

  Exam({
    required this.subject,
    required this.dateTime,
    required this.rooms,
  });
}