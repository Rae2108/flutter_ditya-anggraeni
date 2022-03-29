import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Input'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text('Pick Files'),
            const SizedBox(height: 8),
            Center(
              child: ElevatedButton(
                child: const Text('Pick files'),
                onPressed: (){
                  _pickFile();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _pickFile() async{
  FilePickerResult? result = await FilePicker.platform.pickFiles();
  if(result != null){
  }else{}

  //
  // final file = result.files.first;
  // _openFile(file);
}

// void _openFile(PlatformFile file){
//   OpenFile.open(file.path);
// }