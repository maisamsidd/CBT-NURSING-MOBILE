import 'package:cbt_nursing_app/View/Authentication/login_page.dart';
import 'package:cbt_nursing_app/Widgets/LoginSignUp/LoginSignUpButtons.dart';
import 'package:cbt_nursing_app/Widgets/LoginSignUp/LoginSignupTextFields.dart';
import 'package:cbt_nursing_app/main.dart';
import 'package:cbt_nursing_app/utils/App_Colors/App_Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmPasswordController = TextEditingController();

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade400,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Let's Get Started",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: MyColors.whiteColor,
                  ),
                ),
                Text(
                  "Create an account to continue",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MyColors.whiteColor,
                  ),
                ),
                SizedBox(height: mq.height * 0.05),

                // Signup Card
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
                      ),
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
                      const SizedBox(height: 16),
                      Loginsignuptextfields(
                        labelText: "Confirm Password",
                        controller: confirmPasswordController,
                        secure: true,
                      ),
                      const SizedBox(height: 24),
                      LoginsignupButtons(text: "Sign Up", ontap: () {}),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Login",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: mq.height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
