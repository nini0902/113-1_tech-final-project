import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'dart:io';

class TextRecognizerHandler {
  final TextRecognizer _textRecognizer = TextRecognizer();

  // 辨識圖片中的文字
  Future<String> recognizeText(File image) async {
    final inputImage = InputImage.fromFile(image);
    final recognizedText = await _textRecognizer.processImage(inputImage);
    return recognizedText.text; // 回傳辨識的文字
  }

  void dispose() {
    _textRecognizer.close();
  }
}
