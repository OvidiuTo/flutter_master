import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_app/User_things/user.dart';
import 'package:personal_app/User_things/user_preferences.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  User user = UserPreferences.myUser;

  final name_controller = TextEditingController();
  final email_controller = TextEditingController();
  final about_controller = TextEditingController();

  String name = "";
  String email = "";
  String about = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: BackButton(
          color: Colors.blue,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.blue,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(left: 16, top: 25, right: 16),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).scaffoldBackgroundColor),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(user.imagePath)),
                        )),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4,
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              color: Colors.blue),
                          child: Icon(
                            Icons.add_a_photo_rounded,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: TextField(
                  controller: name_controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    labelText: "Full Name",
                    labelStyle: TextStyle(fontSize: 20),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: user.name,
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: TextField(
                  controller: email_controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    labelText: "E-mail",
                    labelStyle: TextStyle(fontSize: 20),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: user.email,
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: TextField(
                  controller: about_controller,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 5),
                    labelText: "About",
                    labelStyle: TextStyle(fontSize: 20),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    hintText: user.about,
                    hintStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        name = name_controller.text;
                        email = email_controller.text;
                        about = about_controller.text;
                      });
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.blue),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ))
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
