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
      Reference ref = _storage.ref().child('momUser/$imageName');
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
    required String age,
    required String nname,
    required String number,
    required String address,
    required Uint8List file,
    required String email,
  }) async {
    try {
      if (age.isNotEmpty && nname.isNotEmpty) {
        String imageUrl = await uploadImageToStorage(file);
        await _firestore.collection('saveMomDetails').add({
          'email': email,
          'age': age,
          'name': nname,
          'number': number,
          'address': address,
          'imageLink': imageUrl,
        });
        return 'success';
      } else {
        return 'Age and Fetus Age cannot be empty';
      }
    } catch (error) {
      // ignore: avoid_print
      print("Error saving data: $error");
      return "Some Error";
    }
  }
}
