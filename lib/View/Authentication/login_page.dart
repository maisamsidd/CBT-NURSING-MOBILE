import 'package:cbt_nursing_app/View/Authentication/signup_page.dart';
import 'package:cbt_nursing_app/Widgets/LoginSignUp/LoginSignUpButtons.dart';
import 'package:cbt_nursing_app/Widgets/LoginSignUp/LoginSignupTextFields.dart';
import 'package:cbt_nursing_app/main.dart';
import 'package:cbt_nursing_app/utils/App_Colors/App_Colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade400,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: mq.height * 0.1),
              Text(
                "Welcome back",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: MyColors.whiteColor),
              ),
              Text(
                "Login to continue",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.whiteColor),
              ),
              SizedBox(height: mq.height * 0.05),
              Container(
                padding: const EdgeInsets.all(20),
                width: mq.width * 0.9,
                decoration: BoxDecoration(
                  color: MyColors.whiteColor,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6,
                      spreadRadius: 2,
                    )
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Loginsignuptextfields(
                      hintText: "abc@example.com",
                      labelText: "Email",
                      controller: emailController,
                      secure: false,
                    ),
                    const SizedBox(height: 16),
                    Loginsignuptextfields(
                      labelText: "Password",
                      controller: passwordController,
                      secure: true,
                    ),
                    const SizedBox(height: 24),
                    LoginsignupButtons(
                      text: "Login",
                      ontap: () {
                        
                      },
                    ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Not a member?"),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignupPage()));
                          },
                          child: const Text(
                            "Create a free account",
                            style: TextStyle(color: Colors.blue),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: mq.height * 0.03),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              SizedBox(height: mq.height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
