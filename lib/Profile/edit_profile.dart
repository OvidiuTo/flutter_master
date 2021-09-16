import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
  TextEditingController _textEditingController = TextEditingController();

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
              onClicked: () async {},
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: "Full Name",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: user.name,
                hintStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
              onChanged: (name) {},
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: user.email,
                hintStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
              onChanged: (email) {},
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                labelText: "About",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                hintText: user.about,
                hintStyle: TextStyle(
                  fontSize: 16,
                ),
              ),
              maxLines: 5,
              onChanged: (about) {},
            ),
            SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue
                    ),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      );
}
