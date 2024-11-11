import 'package:flutter/material.dart';
import 'package:login/componets/button.dart';
import 'package:login/componets/image.dart';
import 'package:login/widgets/text_field.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void onTapClick() {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              // icon
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              // text
              Text(
                "Welcome back you\'ve been missed!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              // textfields
              TextFields(
                controller: usernameController,
                hintText: "Username",
                obsecureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              TextFields(
                controller: passwordController,
                hintText: "Password",
                obsecureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot Password",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[700],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MyButton(onTap: onTapClick),
              const SizedBox(
                height: 10,
              ),
              // images
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageAssets(
                    imagePath: "assets/apple.png",
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ImageAssets(
                    imagePath: "assets/google.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              // reg link
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not Register? ",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text(
                    "Rigister Now",
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
