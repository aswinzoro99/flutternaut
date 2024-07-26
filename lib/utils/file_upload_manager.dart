import 'dart:io';

import 'package:file_picker/file_picker.dart';

class FileUploadManager {
  Future<File?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      return File(result.files.single.path!);
    } else {
      return null;
    }
  }
}
