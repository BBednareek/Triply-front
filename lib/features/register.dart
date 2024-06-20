import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/theme/styles/login_widgets/input_field.dart';
import 'package:triply/core/theme/styles/login_widgets/login_button.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  height: height * .7,
                  decoration: const BoxDecoration(
                      color: Color(0xFFE0E0E0),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100))),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () => context.go(Routes.login),
                          style: TextButton.styleFrom(
                            side: const BorderSide(
                              color: Colors.teal,
                            ),
                          ),
                          child: const Text(
                            "Zaloguj się",
                            style: TextStyle(
                              color: Colors.teal,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Column(
                      children: [
                        const Text(
                          "Witaj w",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/img/logo.png'),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    InputFieldWidget(
                      width: width * .9,
                      isObscured: false,
                      onChanged: () {},
                      placeholder: "Email",
                      title: "Email",
                    ),
                    const SizedBox(height: 30),
                    InputFieldWidget(
                      width: width * .9,
                      isObscured: false,
                      onChanged: () {},
                      placeholder: "Password",
                      title: "Password",
                    ),
                    const SizedBox(height: 20),
                    LoginButton(
                      height: height * .06,
                      width: width * .5,
                      buttonTitle: "Zarejestruj się",
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  LoginButton(
                    height: height * .065,
                    width: width * .8,
                    buttonTitle: "Zarejestruj się przez ...",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10),
                  LoginButton(
                    height: height * .065,
                    width: width * .8,
                    buttonTitle: "Zarejestruj się przez ...",
                    onPressed: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: SizedBox(
                      width: width * .25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          3,
                          (index) => Container(
                            decoration: BoxDecoration(
                              shape: index == 0
                                  ? BoxShape.rectangle
                                  : BoxShape.circle,
                              color: index == 0 ? Colors.teal : Colors.grey,
                            ),
                            width: 20,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
