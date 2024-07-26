import 'dart:typed_data';

import 'package:file_picker/file_picker.dart';

class FileUploadManager {
  Future<Uint8List?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      final bytes = result.files.single.bytes!;
      return bytes;
    } else {
      return null;
    }
  }
}
