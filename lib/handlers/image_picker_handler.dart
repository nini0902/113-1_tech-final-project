import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePickerHandler {
  final ImagePicker _picker = ImagePicker();

  // 從相簿選擇圖片
  Future<File?> pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      return File(pickedFile.path); // 回傳選擇的圖片檔案
    }
    return null; // 如果未選擇圖片，回傳 null
  }
}
