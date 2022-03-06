import 'package:flutter/material.dart';
import 'package:myapp/components/TitleContainer.dart';
import 'package:myapp/widgets/ProfileName.dart';
import 'package:myapp/widgets/ProfilePicture.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleContainer(text: "Profile"),
        Center(child: ProfilePicture()),
        const Center(child: ProfileName())
      ],
    ));
  }
}
