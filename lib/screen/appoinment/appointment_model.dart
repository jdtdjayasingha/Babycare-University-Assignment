
class Appointment {
  DateTime selectedDate;
  String selectedTime;
  String fullName;
  String email;
  String problem;

  Appointment({
    required this.selectedDate,
    required this.selectedTime,
    required this.fullName,
    required this.email,
    required this.problem,
  });

  Appointment copyWith({
    DateTime? selectedDate,
    String? selectedTime,
    String? fullName,
    String? email,
    String? problem,
    String? doctorName,
  }) {
    return Appointment(
      selectedDate: selectedDate ?? this.selectedDate,
      selectedTime: selectedTime ?? this.selectedTime,
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      problem: problem ?? this.problem,
    );
  }
}
