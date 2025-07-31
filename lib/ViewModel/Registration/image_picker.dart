import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;

class PickImage {
  File? file;
  final ImagePicker imagePicker = ImagePicker();

  Future<File?> pickImageFromGallery() async {
    final XFile? image = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (image != null) {
      file = File(image.path); //getting file path
      return file;
    } else {
      throw Exception("Unable to pick image try again");
    }
  }

  Future<String> uploadImage(File file) async {
    try {
      final Reference storageReference = FirebaseStorage.instance.ref();
      final String name = path.basename(file.path);
      final Reference reference = storageReference.child(name);
      // final TaskSnapshot snapshot = 
      await reference.putFile(file);
      String dounloadUrl = await reference.getDownloadURL();
      return dounloadUrl;
    } catch (e) {
      throw Exception("Error While Uploading Image$e");
    }
  }
}
