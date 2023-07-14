import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:second/logics/auth_method.dart';
import 'package:second/logics/image_picker.dart';
import 'package:second/responsive/snack_bar.dart';
import 'package:second/screens/login_screen.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController bioController = TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    bioController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 32),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  'Instagram',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    _image != null
                        ? CircleAvatar(
                            backgroundImage: MemoryImage(_image!),
                            radius: 60,
                          )
                        : CircleAvatar(
                            backgroundImage:
                                AssetImage('images/defaultPerson.png'),
                            radius: 60,
                          ),
                    Positioned(
                      bottom: -12,
                      left: 74,
                      child: IconButton(
                        onPressed: () async {
                          Uint8List? _im = await imagePick(ImageSource.gallery);
                          if (_im != null) {
                            setState(() {
                              _image = _im;
                            });
                          }
                        },
                        icon: Icon(Icons.add_a_photo),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your name',
                    icon: Icon(Icons.person),
                  ),
                  controller: nameController,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your email',
                    icon: Icon(Icons.email),
                  ),
                  controller: emailController,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    icon: Icon(Icons.password),
                  ),
                  obscureText: true,
                  controller: passwordController,
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your bio',
                    icon: Icon(Icons.edit),
                  ),
                  controller: bioController,
                ),
                SizedBox(
                  height: 18,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _isLoading = true;
                      });

                      String res = await AuthMethod().sigupUser(
                        nameController.text,
                        emailController.text,
                        passwordController.text,
                        bioController.text,
                        _image!,
                      );

                      setState(() {
                        _isLoading = false;
                      });

                      if (res != 'sucess') {
                        showSnackBar(res, context);
                      }
                    },
                    child: _isLoading
                        ? Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          )
                        : Text("Sign Up"),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account already?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
