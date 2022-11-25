import 'dart:io';

import 'package:file_manager/style/fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../../style/colors.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  File? image;
  Future pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;

      final imagePerm = await saveImagePerm(image.path);
      setState(() {
        this.image = imagePerm;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image : $e');
    }
  }

  Future<File> saveImagePerm(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    final name = basename(imagePath);
    final image = File('${directory.path}/$name');

    return File(imagePath).copy(image.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.fromLTRB(20, 35, 20, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.search),
                Text(
                  'Gallery',
                  style: compassTitle,
                ),
                GestureDetector(
                    onTap: () {
                      showCupertinoDialog(
                          context: context,
                          builder: (context) {
                            return Scaffold(
                              body: Center(
                                child: Container(
                                  height: 300,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      OutlinedButton.icon(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  const MaterialStatePropertyAll(
                                                      orange),
                                              foregroundColor:
                                                  const MaterialStatePropertyAll(
                                                      white),
                                              textStyle:
                                                  MaterialStatePropertyAll(
                                                      homepageButton),
                                              padding:
                                                  const MaterialStatePropertyAll(
                                                      EdgeInsets.symmetric(
                                                          vertical: 10,
                                                          horizontal: 30)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)))),
                                          onPressed: () =>
                                              pickImage(ImageSource.gallery),
                                          icon: const Icon(Icons.photo_outlined),
                                          label: const Text('Pick from gallery  ')),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      OutlinedButton.icon(
                                          style: ButtonStyle(
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      darkblue),
                                              foregroundColor:
                                                  MaterialStatePropertyAll(
                                                      white),
                                              textStyle:
                                                  MaterialStatePropertyAll(
                                                      homepageButton),
                                              padding: MaterialStatePropertyAll(
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 30)),
                                              shape: MaterialStatePropertyAll(
                                                  RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10)))),
                                          onPressed: () =>
                                              pickImage(ImageSource.camera),
                                          icon:
                                              Icon(Icons.photo_camera_outlined),
                                          label: Text('Open the camera'))
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    },
                    child: Icon(Icons.camera_alt_outlined))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            image != null
                ? Image.file(image!)
                : Text(
                    'No photo found to display.',
                    style: compassTitle,
                  ),
          ],
        ),
      ),
    );
  }
}
