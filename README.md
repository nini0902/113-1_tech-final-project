# Flutter OCR APP Readme

## **專案目標**
開發一個簡單的 Flutter APP，實現以下功能：
1. **圖片選擇**：從相簿中上傳圖片。
2. **文字辨識**：使用 Google ML Kit 的 OCR 工具，提取圖片中的文字。
3. **結果顯示**：在界面上顯示辨識結果。

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
│   └── text_recognizer_handler.dart
├── screens/
│   └── ocr_home_page.dart
└── main.dart
```

### **檔案描述**
1. **`image_picker_handler.dart`**
   - 負責圖片的選擇，使用 `image_picker` 插件從相簿中選取圖片。
2. **`text_recognizer_handler.dart`**
   - 負責文字辨識，利用 Google ML Kit OCR 工具進行圖片文字提取。
3. **`ocr_home_page.dart`**
   - 提供 APP 的主界面，顯示按鈕和辨識結果。
4. **`main.dart`**
   - 整合所有功能模塊，啟動 APP，處理圖片上傳與文字辨識的交互邏輯。

---

## **執行專案**
1. 啟動模擬器或連接真機。
2. 在專案目錄中運行以下指令：
   ```bash
   flutter run
   ```
3. 測試 APP 的功能：
   - 點擊 "選擇圖片" 按鈕，從相簿中選擇圖片。
   - 查看辨識結果是否顯示正確。

---

## **未來擴展建議**
1. **加入拍照功能**：
   - 使用 `ImageSource.camera` 支持用戶拍照。
2. **多語言支援**：
   - Google ML Kit 支持多種語言，可根據需求擴展。
3. **文字分享與儲存**：
   - 提供分享功能，讓用戶將辨識結果直接導出或保存。

---

## **常見問題與解決方式**
1. **模擬器無法選擇圖片**：
   - 部分模擬器不支持相簿功能，請使用實體設備進行測試。
2. **`flutter doctor` 顯示依賴問題**：
   - 確保 Android Studio 和 Dart 插件已正確安裝。
3. **文字辨識不準確**：
   - 優化圖片品質，例如增加對比度或減少雜訊。
---
# 智能題目掃描系統

## 專案介紹
本專案是一個智能題目掃描系統，專注於解決學科學習中的題目文字及公式掃描需求，特別是混合了中文、數學公式以及化學符號的題目。  
系統能夠將題目精準辨識並轉換為 **LaTeX 格式**，方便使用者直接複製到 ChatGPT 等工具進行互動，大幅提高學習效率。

---

## 背景與動機
現有 OCR 工具在處理包含中文、數學公式與化學符號的複雜題目時，辨識效果不佳。  
這導致手動輸入過程繁瑣且易出錯，降低了解題效率。  

作為一名 ChatGPT 的常用者，為了提升學習效率和優化用戶體驗，我希望構建一個簡單、準確的題目掃描系統，能夠快速分辨題目內容並生成 **LaTeX 格式**，以便於進一步使用。

---

## 專案目標
- 支援拍照上傳並提取文字，能夠準確辨識：
  - 中文及英文文字。
  - 數學公式（如積分、根號等）。
  - 化學符號（如元素符號、反應箭頭、上下標等）。
- 將辨識結果轉為 **LaTeX 格式**，供使用者快速複製與應用。

---

## 範圍與限制
1. **掃描範圍**：
   - 使用者需手動選定圖片中的掃描範圍（建議一次處理單題）以提高辨識精準度。
2. **內容格式**：
   - 僅支援題目中的文字與符號，不包含圖形或圖表的解析。
3. **系統準確性**：
   - 依賴 OCR 技術的準確度，可能對模糊或手寫文字的辨識效果有限。

---

## 使用的技術與工具
### 技術
- **OCR 技術**：
  - 使用 [Tesseract.js](https://github.com/naptha/tesseract.js) 處理中文及一般文字辨識。
  - 使用 [MathOCR](https://github.com/Physikerwelt/MathOCR) 辨識數學公式。
  - 使用 [ChemOCR](https://github.com/BowenFu/ChemOCR) 辨識化學符號。
- **前端框架**：
  - 使用 HTML、CSS 和 JavaScript 開發網頁界面。

### 開發工具
- **Visual Studio Code**：進行程式開發。
- **GitHub**：進行版本管理與協作。

---

## 系統架構與原理
1. **用戶操作**：
   - 使用者透過網頁上傳圖片。
   - 手動選定需要掃描的範圍（如框選題目部分）。
2. **系統運作**：
   - 系統將圖片中的內容分為三類：中文文字、數學公式、化學符號。
   - 根據類別調用相應的 OCR 引擎進行辨識：
     - **Tesseract.js** 用於處理中文及一般文字。
     - **MathOCR** 用於辨識數學公式。
     - **ChemOCR** 用於處理化學符號。
3. **結果生成**：
   - 將所有辨識結果整合並轉換為 **LaTeX 格式**。
   - 在網頁上顯示結果，供使用者預覽及複製。

---

## 未來展望
1. **其他應用工具**：
   - **To-Do List 系統**：管理學習進度與任務。
   - **讀書日程安排工具**：規劃每日學習時間。
2. **更多學科場景**：
   - 支援圖表、圖片辨識
