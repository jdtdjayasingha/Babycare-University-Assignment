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
        'selectedDate': "22/6/2024",
        'selectedTime': appointment.selectedTime,
        'fullName': appointment.fullName,
        'email': appointment.email,
        'problem': appointment.problem,
        'Doctor': "Dr. Michael Patel",
      });
    } catch (e) {
      // Handle errors
      print('Error adding appointment: $e');
      throw e; // Re-throw the exception to handle it in the calling code
    }
  }
}
