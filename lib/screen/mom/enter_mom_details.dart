import 'dart:typed_data';

import 'package:babycare/screen/mom/add_data.dart';
import 'package:babycare/screen/mom/mom_success.dart';
import 'package:babycare/screen/mom/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EnterMomDetails extends StatefulWidget {
  const EnterMomDetails({super.key});

  @override
  State<EnterMomDetails> createState() => _EnterDoctorDetailsState();
}

class _EnterDoctorDetailsState extends State<EnterMomDetails> {
  Uint8List? _image;

  final TextEditingController ageEditingController = TextEditingController();
  final TextEditingController fageEditingController = TextEditingController();
  final TextEditingController numberEditingController = TextEditingController();
  final TextEditingController addressEditingController =
      TextEditingController();

  void selectImage() async {
    List<int> img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img as Uint8List?;
    });
  }

  void saveDoctor() async {
    String age = ageEditingController.text;
    String fage = fageEditingController.text;
    String number = numberEditingController.text;
    String address = addressEditingController.text;

    // ignore: unused_local_variable
    String resp = await StoreData().saveData(
        age: age, fage: fage, number: number, address: address, file: _image!);

    ageEditingController.clear();
    fageEditingController.clear();
    numberEditingController.clear();
    addressEditingController.clear();

    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => MomSuccess(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 20,
            right: 20,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Enter Mom Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        _image != null
                            ? CircleAvatar(
                                radius: 64,
                                backgroundImage: MemoryImage(_image!),
                              )
                            : const CircleAvatar(
                                radius: 64,
                                backgroundImage:
                                    AssetImage('assets/images/user.png'),
                                // backgroundImage: NetworkImage(
                                //     'https://banner2.cleanpng.com/20240323/ogb/transparent-iphone-camera-white-iphone-camera-on-flat-surface65fee27494bcf1.70391006.webp'),
                              ),
                        Positioned(
                          bottom: -10,
                          left: 80,
                          child: IconButton(
                            onPressed: selectImage,
                            icon: const Icon(Icons.add_a_photo),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: ageEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Age',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: numberEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Fetus Age',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    controller: fageEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Telephone Number',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  height: 150,
                  width: double.infinity, // Make the container take full width
                  decoration: BoxDecoration(
                    color: Colors.green[50],
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ), // Set border color to green
                  ),
                  child: TextField(
                    maxLines: null,
                    expands: true,
                    keyboardType: TextInputType.multiline,
                    controller: addressEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Your Address',
                      contentPadding: EdgeInsets.all(10.0),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 31, 171, 137),
                    ),
                    onPressed: saveDoctor,
                    child: const Text(
                      '    Next    ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
