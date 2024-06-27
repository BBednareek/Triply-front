import 'package:flutter/material.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/form_view.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WelcomeForm(
          action: 0,
          function: () {},
        ),
      ),
    );
  }
}
