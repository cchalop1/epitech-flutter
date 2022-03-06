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

  File? _image = File("/storage/emulated/0/Pictures/profile_picture.jpg");

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final XFile? photo =
            await _picker.pickImage(source: ImageSource.camera);

        if (photo != null) {
          await photo
              .saveTo("/storage/emulated/0/Pictures/profile_picture.jpg");
          setState(() {
            _image = File("/storage/emulated/0/Pictures/profile_picture.jpg");
          });
        }
      },
      child: Row(children: [
        Container(
          width: 180,
          height: 180,
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
            ElevatedButton(onPressed: () async {}, child: Text("Galery")),
            ElevatedButton(
                onPressed: () {
                  if (_image != null) {
                    _image!.delete();
                    setState(() {
                      _image = null;
                    });
                  }
                },
                child: Text("Delete")),
          ],
        ),
      ]),
    );
  }
}
