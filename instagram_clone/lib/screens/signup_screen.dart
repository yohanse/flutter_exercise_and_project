import 'package:flutter/material.dart';
import 'package:second/logics/auth_method.dart';

import '../widget/text_field.dart';

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
                    CircleAvatar(
                      backgroundImage: AssetImage('images/instagram_logo.jpg'),
                      radius: 60,
                    ),
                    Positioned(
                      bottom: -12,
                      left: 74,
                      child: IconButton(
                        onPressed: () {},
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
                    prefixIcon: Icon(Icons.person),
                  ),
                  controller: nameController,
                ),

                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  controller: emailController,
                ),

                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(Icons.password),
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
                    prefixIcon: Icon(Icons.edit),
                  ),
                  controller: bioController,
                ),

                SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                  onPressed: () async {
                    String res = await AuthMethod().sigupUser(
                      nameController.text,
                      emailController.text,
                      passwordController.text,
                      bioController.text,
                    );

                    print(res);
                  },
                  child: Text("Sign Up"),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Do you have an account already?"),
                    TextButton(
                      onPressed: () {},
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