import 'package:flutter/material.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/colors.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';

class ReferenceButton extends StatelessWidget {
  const ReferenceButton({
    super.key,
    required this.width,
    required this.method,
    required this.text,
  });

  final double width;

  final VoidCallback method;

  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: () => method(),
          customBorder:
              RoundedRectangleBorder(borderRadius: Paddings.circular10),
          child: SizedBox(
            width: width,
            height: 48,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: ThemeColors.baseGreen),
                borderRadius: Paddings.circular10,
              ),
              padding: Paddings.all13,
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      text,
                      style: context.textStyle(fontSize13),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const Icon(Icons.arrow_forward_ios, size: 17)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
