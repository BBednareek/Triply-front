import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    required this.width,
    required this.isObscured,
    required this.onChanged,
    required this.placeholder,
    required this.title,
  });
  final double width;
  final bool isObscured;
  final Function onChanged;
  final String title;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: width,
          height: 48,
          child: TextFormField(
            enabled: true,
            initialValue: placeholder,
            autocorrect: false,
            autofocus: false,
            onChanged: (onChange) => onChanged,
            obscureText: isObscured,
            style: const TextStyle(fontSize: 15),
            decoration: InputDecoration(
                hintText: title,
                hintStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    width: 1,
                    color: Colors.teal,
                  ),
                  borderRadius: BorderRadius.circular(15),
                )),
          ),
        ),
      ],
    );
  }
}
