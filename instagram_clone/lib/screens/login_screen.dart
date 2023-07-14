import 'package:flutter/material.dart';
import 'package:second/logics/auth_method.dart';
import 'package:second/responsive/snack_bar.dart';
import 'package:second/screens/signup_screen.dart';
import 'package:second/widget/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isLoading = false;
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
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                // Logo
                CircleAvatar(
                  backgroundImage: AssetImage('images/instagram_logo.jpg'),
                  radius: 60,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  'Instagram',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Pacifico',
                    fontSize: 30,
                  ),
                ),
                // email input field
                const SizedBox(
                  height: 15,
                ),
                TextFieldInput(
                  hintText: 'Email',
                  icon: Icons.email,
                  controller: emailController,
                ),

                // password input field
                const SizedBox(
                  height: 10,
                ),
                TextFieldInput(
                  hintText: 'Password',
                  icon: Icons.password,
                  obscure: true,
                  controller: passwordController,
                ),

                // login button
                const SizedBox(
                  height: 18,
                ),
                ElevatedButton(
                    onPressed: () async {
                      setState(() {
                        _isLoading = true;
                      });
                      String res = await AuthMethod().loginUser(
                          emailController.text, passwordController.text);
                      setState(() {
                        _isLoading = false;
                      });
                      if (res != 'Success') {
                        showSnackBar(res, context);
                      } else {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyWidget(),
                          ),
                        );
                      }
                    },
                    child: _isLoading == false
                        ? Text("Login")
                        : CircularProgressIndicator(
                            color: Colors.white,
                          )),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't you have an account yet?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
                // go to sign up text button
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Login sucess"),
      ),
    );
  }
}
