import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/Profile/profile_widget.dart';
import 'package:personal_app/User_things/user.dart';
import 'package:personal_app/User_things/user_preferences.dart';
import 'package:personal_app/Widget/appbar_widget.dart';
import 'package:personal_app/Widget/textfield_widget.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: buildAppBar(context),
    body: ListView(
      padding: EdgeInsets.symmetric(horizontal: 32),
      physics: BouncingScrollPhysics(),
      children: [
        ProfileWidget(
          imagePath: user.imagePath,
          isEdit: true,
         onClicked: ()async{},
        ),

        const SizedBox(height: 24),
        TextFieldWidget(
          label: "Full Name",
          text: user.name,
          onChanged:(name){},
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: "Email",
          text: user.email,
          onChanged:(email){},
        ),
        const SizedBox(height: 24),
        TextFieldWidget(
          label: "About",
          text: user.about,
          maxLines:5,
          onChanged:(about){},
        ),
      ],
    ),
  );
}