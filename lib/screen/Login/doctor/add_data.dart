import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

final FirebaseStorage _storage = FirebaseStorage.instance;
final FirebaseFirestore _firestore = FirebaseFirestore.instance;

class StoreData {
  Future<String> uploadImageToStorage(Uint8List file) async {
    try {
      // Generate a unique image name
      String imageName = DateTime.now().millisecondsSinceEpoch.toString();
      Reference ref = _storage.ref().child('doctorUser/$imageName');
      UploadTask uploadTask = ref.putData(file);
      TaskSnapshot snapshot = await uploadTask;
      String downloadURL = await snapshot.ref.getDownloadURL();
      return downloadURL;
    } catch (error) {
      // ignore: avoid_print
      print("Error uploading image: $error");
      return "";
    }
  }

  Future<String> saveData({
    required String dname,
    required String name,
    required String number,
    required String time,
    required String description,
    required Uint8List file,
    required String email,
  }) async {
    try {
      if (name.isNotEmpty && number.isNotEmpty) {
        String imageUrl = await uploadImageToStorage(file);
        await _firestore.collection('saveDoctorDetails').add({
          'email': email,
          'dname': dname,
          'name': name,
          'number': number,
          'time': time,
          'description': description,
          'imageLink': imageUrl,
        });
        return 'success';
      } else {
        return 'Name and Quantity cannot be empty';
      }
    } catch (error) {
      // ignore: avoid_print
      print("Error saving data: $error");
      return "Some Error";
    }
  }
}
