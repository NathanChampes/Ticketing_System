import 'package:flutter/material.dart';
import 'package:partie_mobile/models/navigator_function.dart';
import 'package:partie_mobile/models/text_field.dart';
import 'package:partie_mobile/pages/forgot_password.dart';
import 'package:partie_mobile/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // textfield controllers
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Logo
              const Image(
                image: AssetImage('assets/images/logo_ck_grp.png'),
                height: 150,
              ),

              // Message de bienvenue
              Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    margin: const EdgeInsets.only(top: 20),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Bienvenue',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    margin: const EdgeInsets.only(top: 60),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Connectez-vous pour continuer',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0XFF003869),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // email textfield
              MyTextField(
                hintText: "Email",
                obscureText: false,
                controller: emailTextController,
                icon: const Icon(
                  Icons.email,
                  color: Color(0XFF003869),
                ),
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                hintText: "Mot de passe",
                obscureText: true,
                controller: passwordTextController,
                icon: const Icon(
                  Icons.lock,
                  color: Color(0XFF003869),
                ),
              ),

              const SizedBox(height: 10),

              // connexion button
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    navigateToPage(context, const HomePage());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0XFF003869),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Connexion',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),

              // forgot password
              TextButton(
                onPressed: () {
                  navigateToPage(context, const ForgotPasswordPage());
                },
                child: const Text(
                  'Mot de passe oublié ?',
                  style: TextStyle(
                    color: Color(0XFF003869),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}