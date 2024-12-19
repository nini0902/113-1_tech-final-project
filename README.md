# Flutter OCR APP Readme

## **專案目標**
開發一個簡單的 Flutter APP，實現以下功能：
1. **圖片選擇**：從相簿中上傳圖片。
2. **文字辨識**：使用 Google ML Kit 的 OCR 工具，提取圖片中的文字。
3. **結果顯示**：在界面上顯示辨識結果。
4. **圖片裁切**：拍照或上傳圖片後，提供用戶進行裁剪。
5. **分段辨識**：辨識圖片中的中文、數學和化學內容，並分別處理顯示。

---

## **準備步驟**

### **環境安裝**
1. **下載並安裝 Flutter SDK**：
   - 前往 [Flutter 官網](https://flutter.dev/docs/get-started/install) 安裝適合你的作業系統版本。

2. **安裝 IDE**：
   - 建議使用 **Android Studio** 或 **Visual Studio Code**。
   - 在 IDE 中安裝 Flutter 和 Dart 插件。

3. **配置 Android 模擬器或連接真機**：
   - Android Studio 提供內建模擬器。
   - 如果使用實體設備，請確保啟用了 USB 偵錯模式。

4. **檢查環境**：
   - 在命令列輸入：
     ```bash
     flutter doctor
     ```
   - 確保所有必要的依賴項已安裝（如 Android SDK 和 Dart 工具）。

---

### **專案初始化**

1. **建立 Flutter 專案**：
   ```bash
   flutter create ocr_app
   cd ocr_app
   ```

2. **安裝必要的插件**：
   - 在 `pubspec.yaml` 中添加以下依賴：
     ```yaml
     dependencies:
       flutter:
         sdk: flutter
       image_picker: ^0.8.7+4
       google_mlkit_text_recognition: ^0.5.0
       image_cropper: ^4.2.0
     ```
   - 安裝插件：
     ```bash
     flutter pub get
     ```

---

## **目錄結構**
將以下檔案放到專案對應目錄中：

```
lib/
├── handlers/
│   ├── image_picker_handler.dart
│   ├── text_recognizer_handler.dart
│   ├── image_cropper_handler.dart
├── screens/
│   └── ocr_home_page.dart
└── main.dart
```

### **檔案描述**
1. **`image_picker_handler.dart`**
   - 負責圖片的選擇，使用 `image_picker` 插件從相簿中選取圖片。
2. **`text_recognizer_handler.dart`**
   - 負責文字辨識，利用 Google ML Kit OCR 工具進行圖片文字提取。
3. **`image_cropper_handler.dart`**
   - 提供圖片裁切功能，使用 `image_cropper` 插件讓用戶選擇裁剪範圍。
4. **`ocr_home_page.dart`**
   - 提供 APP 的主界面，顯示按鈕、裁切後的圖片和辨識結果。
5. **`main.dart`**
   - 整合所有功能模塊，啟動 APP，處理圖片上傳、裁切與文字辨識的交互邏輯。

---

## **執行專案**
1. 啟動模擬器或連接真機。
2. 在專案目錄中運行以下指令：
   ```bash
   flutter run
   ```
3. 測試 APP 的功能：
   - 點擊 "選擇圖片" 按鈕，從相簿中選擇圖片。
   - 使用裁切工具選擇需要辨識的圖片範圍。
   - 查看辨識結果是否顯示正確，並確認分段處理中文、數學和化學部分。

---

## **未來擴展建議**
1. **加入拍照功能**：
   - 使用 `ImageSource.camera` 支持用戶拍照。
2. **分段辨識優化**：
   - 使用 Google ML Kit 提供的文字區塊檢測進一步提升分類準確性。
3. **數學與化學辨識工具整合**：
   - 整合 `Mathpix OCR` 處理數學公式。
   - 使用正則表達式或化學辨識 API 處理化學式。
4. **文字分享與儲存**：
   - 提供分享功能，讓用戶將辨識結果直接導出或保存。

---

## **常見問題與解決方式**
1. **模擬器無法選擇圖片**：
   - 部分模擬器不支持相簿功能，請使用實體設備進行測試。
2. **`flutter doctor` 顯示依賴問題**：
   - 確保 Android Studio 和 Dart 插件已正確安裝。
3. **文字辨識不準確**：
   - 優化圖片品質，例如增加對比度或減少雜訊。
4. **裁剪功能問題**：
   - 確保安裝了最新版本的 `image_cropper` 並正確配置。

---
