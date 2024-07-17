import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerNotifier extends StateNotifier<File?> {
  ImagePickerNotifier() : super(null);

  final picker = ImagePicker();

  Future<void> getImageGallery() async {
    final pickedFile =
        await picker.pickImage(source: ImageSource.gallery, imageQuality: 80);

    if (pickedFile != null) {
      state = File(pickedFile.path);
    } else {
      state = null;
      print("No Image Picked");
    }
  }

  void resetImage() {
    state = null;
  }
}

final imageProvider = StateNotifierProvider<ImagePickerNotifier, File?>(
    (ref) => ImagePickerNotifier());
