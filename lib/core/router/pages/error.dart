import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:triply/core/constants/images.dart';
import 'package:triply/core/constants/routes.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';

class Error extends StatelessWidget {
  const Error({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: Paddings.horizontal15,
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 50),
                  Padding(
                    padding: Paddings.bottom40,
                    child: Image.asset(ImagePathes.logo),
                  ),
                  Padding(
                    padding: Paddings.bottom26,
                    child: Text(
                      "Nie znaleziono strony",
                      style: context.textStyle(fontSize28w600),
                    ),
                  ),
                  Padding(
                    padding: Paddings.bottom26,
                    child: Text(
                      "Strona, której szukasz, nie istnieje. Jak się tu dostałeś, pozostaje tajemnicą. Możesz jednak kliknąć poniższy przycisk, aby wrócić do strony głównej.",
                      style: context.textStyle(fontSize16),
                    ),
                  ),
                  Padding(
                    padding: Paddings.vertical8horizontal40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(280, 57),
                        shape: RoundedRectangleBorder(
                          borderRadius: Paddings.circular80,
                        ),
                        textStyle: context.textStyle(fontSize18Bold),
                      ),
                      onPressed: () => context.go(Routes.dashboard),
                      child: const Text("Wróć do strony głównej"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
