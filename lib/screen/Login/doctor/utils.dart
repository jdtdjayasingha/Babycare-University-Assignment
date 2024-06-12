import 'package:image_picker/image_picker.dart';

Future<List<int>> pickImage(ImageSource source) async {
  final ImagePicker imagePicker = ImagePicker();
  // ignore: no_leading_underscores_for_local_identifiers
  XFile? _file = await imagePicker.pickImage(source: source);
  if (_file != null) {
    return await _file.readAsBytes();
  } else {
    // ignore: avoid_print
    print('No Images Selected');
    return [];
  }
}
