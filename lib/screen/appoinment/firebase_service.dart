import 'appointment_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseService {
  final CollectionReference _appointmentsCollection =
      FirebaseFirestore.instance.collection('appointments');

  Future<void> addAppointment(
    Appointment copyWith, {
    required Appointment appointment,
    required String doctorName,
    required String userEmail,
  }) async {
    try {
      await _appointmentsCollection.add({
        'selectedDate': appointment.selectedDate,
        'selectedTime': appointment.selectedTime,
        'fullName': appointment.fullName,
        'age': appointment.age,
        'problem': appointment.problem,
        'doctorName': doctorName,
        'userEmail': userEmail,
      });
    } catch (e) {
      // Handle errors
      print('Error adding appointment: $e');
      throw e; // Re-throw the exception to handle it in the calling code
    }
  }
}
