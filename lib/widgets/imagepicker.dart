// ignore_for_file: unnecessary_nullable_for_final_variable_declarations, prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagepickerWidget extends StatefulWidget {
  const ImagepickerWidget({Key? key});

  @override
  State<ImagepickerWidget> createState() => _ImagepickerWidgetState();
}

class _ImagepickerWidgetState extends State<ImagepickerWidget> {
  XFile? file;
  List<XFile>? files;
  ImagePicker picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey,
              child: file == null
                  ? const Text("Image not picked")
                  : Image.file(
                      File(file!.path),
                      fit: BoxFit.cover,
                    ),
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo =
                    await picker.pickImage(source: ImageSource.gallery);
                setState(() {
                  file = photo;
                });
              },
              child: Text("Pick Image"),
            ),
            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos =
                    await picker.pickMultiImage();
                setState(() {
                  files = photos;
                });
              }, 
              child: Text("Pick Multiple Images"),
            ),
          ],
        ),
      ),
    );
  }
}











