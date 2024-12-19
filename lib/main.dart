import 'package:flutter/material.dart';
import 'handlers/image_picker_handler.dart';
import 'handlers/text_recognizer_handler.dart';
import 'screens/ocr_home_page.dart';
import 'dart:io';

void main() => runApp(OcrApp());

class OcrApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '文字辨識 APP',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OcrMainPage(),
    );
  }
}

class OcrMainPage extends StatefulWidget {
  @override
  _OcrMainPageState createState() => _OcrMainPageState();
}

class _OcrMainPageState extends State<OcrMainPage> {
  final ImagePickerHandler _imageHandler = ImagePickerHandler();
  final TextRecognizerHandler _textHandler = TextRecognizerHandler();
  String _recognizedText = '等待辨識結果...';

  // 處理圖片選擇和文字辨識
  Future<void> handleImageRecognition() async {
    final image = await _imageHandler.pickImage();
    if (image != null) {
      setState(() {
        _recognizedText = '正在辨識文字...';
      });
      final text = await _textHandler.recognizeText(image);
      setState(() {
        _recognizedText = text.isEmpty ? '未偵測到文字' : text;
      });
    } else {
      setState(() {
        _recognizedText = '未選擇圖片';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return OcrHomePage(
      handleImageRecognition: handleImageRecognition,
    );
  }

  @override
  void dispose() {
    _textHandler.dispose();
    super.dispose();
  }
}
