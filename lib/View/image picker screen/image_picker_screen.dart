import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:share_plus/share_plus.dart';

class ImagePickerScreen extends StatefulWidget {
  const ImagePickerScreen({super.key});

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState();
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  String? imagepath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imagepath != null ? Image.file(File(imagepath!)) : Text("no image"),
          Center(
            child: InkWell(
              onTap: () async {
                final ImagePicker picker = ImagePicker();
                final XFile? upimage =
                    await picker.pickImage(source: ImageSource.gallery);

                if (upimage != null) {
                  print(upimage.path.toString());
                  imagepath = upimage.path;
                }
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  "upload imaage",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: InkWell(
              onTap: () async {
                final ImagePicker picker = ImagePicker();
                final XFile? upimage =
                    await picker.pickImage(source: ImageSource.camera);

                if (upimage != null) {
                  print(upimage.path.toString());
                  imagepath = upimage.path;
                }
                setState(() {});
              },
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(12)),
                child: Center(
                    child: Text(
                  "capture imaage",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                )),
              ),
            ),
          ),
          TextButton(
              onPressed: () {
                setState(() {
                  imagepath = null;
                  print(imagepath);
                });
              },
              child: Text("remove"))
        ],
      ),
    );
  }
}
