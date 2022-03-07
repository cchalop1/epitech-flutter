import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  final ImagePicker _picker = ImagePicker();

  File? _image;

  @override
  void initState() {
    File file = File("/storage/emulated/0/Pictures/profile_picture.jpg");
    if (file.existsSync()) {
      setState(() {
        _image = file;
      });
    }
  }

  void takePicture(ImageSource source) async {
    final XFile? photo = await _picker.pickImage(source: source);

    if (photo != null) {
      await photo.saveTo("/storage/emulated/0/Pictures/profile_picture.jpg");
      setState(() {
        _image = File("/storage/emulated/0/Pictures/profile_picture.jpg");
      });
    }
  }

  void deletePicture() {
    if (_image != null) {
      _image!.delete();
      setState(() {
        _image = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        takePicture(ImageSource.camera);
      },
      child: Row(children: [
        Container(
          margin: EdgeInsets.only(right: 20, left: 10),
          width: MediaQuery.of(context).size.height * 0.2,
          height: MediaQuery.of(context).size.height * 0.2,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: _image != null
                  ? FileImage(_image!)
                  : AssetImage("images/empty_profile.png") as ImageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: [
            ElevatedButton(
                onPressed: () async {
                  takePicture(ImageSource.gallery);
                },
                child: Text("Galery")),
            ElevatedButton(
                onPressed: () {
                  deletePicture();
                },
                child: Text("Delete")),
          ],
        ),
      ]),
    );
  }
}
