class Appointment {
  DateTime selectedDate;
  String selectedTime;
  String fullName;
  int age;
  String problem;
  String doctorName;

  Appointment({
    required this.selectedDate,
    required this.selectedTime,
    required this.fullName,
    required this.age,
    required this.problem,
    required this.doctorName,
  });

  Appointment copyWith({
    DateTime? selectedDate,
    String? selectedTime,
    String? fullName,
    int? age,
    String? problem,
    String? doctorName,
  }) {
    return Appointment(
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
      fullName: fullName ?? this.fullName,
      age: age ?? this.age,
      problem: problem ?? this.problem,
      doctorName: doctorName ?? this.doctorName,
    );
  }
}
