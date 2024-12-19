import 'package:flutter/material.dart';

class OcrHomePage extends StatelessWidget {
  final Function handleImageRecognition;

  OcrHomePage({required this.handleImageRecognition});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('文字辨識 APP')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('歡迎使用文字辨識 APP！', style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => handleImageRecognition(),
              child: Text('選擇圖片'),
            ),
            SizedBox(height: 20),
            Text(
              '辨識結果將顯示在這裡。',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
