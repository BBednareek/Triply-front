import 'package:flutter/material.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.width,
    required this.isObscured,
    required this.onChanged,
    required this.title,
  });
  final double width;
  final bool isObscured;
  final Function onChanged;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textStyle(fontSize16Green),
        ),
        const SizedBox(height: 5),
        Material(
          shadowColor: Colors.black,
          elevation: 20,
          borderRadius: BorderRadius.circular(20),
          child: SizedBox(
            width: width,
            height: 48,
            child: TextFormField(
              enabled: true,
              autocorrect: false,
              autofocus: false,
              onChanged: (onChange) => onChanged,
              obscureText: isObscured,
              decoration: const InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
