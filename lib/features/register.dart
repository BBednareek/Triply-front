import 'package:flutter/material.dart';
import 'package:triply/features/auth/auth_features/shared/widgets/form_view.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WelcomeForm(
          action: 1,
          function: () {},
        ),
      ),
    );
  }
}
