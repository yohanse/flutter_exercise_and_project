import 'package:flutter/material.dart';
import 'package:second/widget/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: Container(),
                flex: 2,
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
                onPressed: () {},
                child: Text("Login"),
              ),

              Flexible(
                child: Container(),
                flex: 2,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't you have an account yet?"),
                  TextButton(
                    onPressed: () {},
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
    );
  }
}
