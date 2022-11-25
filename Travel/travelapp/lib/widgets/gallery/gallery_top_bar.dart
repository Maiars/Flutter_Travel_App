import 'dart:io';

import 'package:file_manager/style/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import '../../style/fonts.dart';

class GalleryTopBar extends StatefulWidget {
  final String title;
  final IconData icon;
  final IconData icon2;
  const GalleryTopBar(
      {super.key,
      required this.title,
      required this.icon,
      required this.icon2});

  @override
  State<GalleryTopBar> createState() => _GalleryTopBarState();
}

class _GalleryTopBarState extends State<GalleryTopBar> {
  File? image;
  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemp = File(image.path);
      setState(() {
        this.image = imageTemp;
      });
    } on PlatformException catch (e) {
      print('Failed to pick image : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 35, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(widget.icon),
          Text(
            widget.title,
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
                                        textStyle: MaterialStatePropertyAll(
                                            homepageButton),
                                        padding: const MaterialStatePropertyAll(
                                            EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 30)),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    onPressed: () => pickImage(),
                                    icon: const Icon(Icons.photo_outlined),
                                    label: const Text('Pick from gallery  ')),
                                SizedBox(
                                  height: 15,
                                ),
                                OutlinedButton.icon(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(darkblue),
                                        foregroundColor:
                                            MaterialStatePropertyAll(white),
                                        textStyle: MaterialStatePropertyAll(
                                            homepageButton),
                                        padding: MaterialStatePropertyAll(
                                            const EdgeInsets.symmetric(
                                                vertical: 10, horizontal: 30)),
                                        shape: MaterialStatePropertyAll(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        10)))),
                                    onPressed: () {},
                                    icon: Icon(Icons.photo_camera_outlined),
                                    label: Text('Open the camera'))
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              child: Icon(widget.icon2))
        ],
      ),
    );
  }
}
