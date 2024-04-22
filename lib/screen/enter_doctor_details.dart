import 'dart:typed_data';

import 'package:babycare/screen/add_data.dart';
import 'package:babycare/screen/doctor_success.dart';
import 'package:babycare/screen/utils.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EnterDoctorDetails extends StatefulWidget {
  const EnterDoctorDetails({super.key});

  @override
  State<EnterDoctorDetails> createState() => _EnterDoctorDetailsState();
}

class _EnterDoctorDetailsState extends State<EnterDoctorDetails> {
  Uint8List? _image;

  // final TextEditingController nameController = TextEditingController();
  // final TextEditingController bioController = TextEditingController();

  final TextEditingController nameEditingController = TextEditingController();
  final TextEditingController numberEditingController = TextEditingController();
  final TextEditingController timeEditingController = TextEditingController();
  final TextEditingController descriptionEditingController =
      TextEditingController();

  void selectImage() async {
    List<int> img = await pickImage(ImageSource.gallery);
    setState(() {
      _image = img as Uint8List?;
    });
  }

  void saveDoctor() async {
    String name = nameEditingController.text;
    String quantity = numberEditingController.text;
    String price = timeEditingController.text;
    String description = descriptionEditingController.text;

    // ignore: unused_local_variable
    String resp = await StoreData().saveData(
        name: name,
        quantity: quantity,
        price: price,
        description: description,
        file: _image!);

    nameEditingController.clear();
    numberEditingController.clear();
    timeEditingController.clear();
    descriptionEditingController.clear();

    Navigator.push(
      // ignore: use_build_context_synchronously
      context,
      MaterialPageRoute(
        builder: (context) => DoctorSuccess(),
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
                      "Enter Doctor Details",
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
                    controller: nameEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Work Hospital Name',
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
                      hintText: 'Enter Telephone Number',
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
                    controller: timeEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Working Time',
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
                    controller: descriptionEditingController,
                    decoration: const InputDecoration(
                      hintText: 'Enter Doctor Description',
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
