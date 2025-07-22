import 'package:dishly/core/theme/app_pallete.dart';
import 'package:dishly/features/presentation/pages/Login_page.dart';
import 'package:dishly/features/presentation/widgets/auth_button.dart';
import 'package:dishly/features/presentation/widgets/auth_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignupPage());
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              const SizedBox(height: 10),

              Container(
                width: 320,
                height: 550,
                decoration: BoxDecoration(
                  color: AppPallete.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/Login.png',
                        height: 150,
                        width: 150,
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        "Your Taste. Your Way.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),

                      const SizedBox(height: 25),

                      AuthField(hintText: 'Name', controller: nameController),
                      SizedBox(height: 10),

                      AuthField(hintText: 'Email', controller: emailController),
                      SizedBox(height: 10),

                      AuthField(
                        hintText: 'Password',
                        controller: passwordController,
                        isObscureText: true,
                      ),
                      SizedBox(height: 10),

                      AuthButton(buttonText: 'Sign Up', onTap: () {}),
                      SizedBox(height: 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, LoginPage.route());
                        },
                        child: RichText(
                          text: TextSpan(
                            text: 'Already have an account? ',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: [
                              TextSpan(
                                text: 'Sign In',
                                style: Theme.of(context).textTheme.titleMedium
                                    ?.copyWith(
                                      color: AppPallete.borderColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
