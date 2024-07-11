import 'package:flutter/material.dart';
import 'package:triply/core/extensions/context_extension.dart';
import 'package:triply/core/theme/colors.dart';
import 'package:triply/core/theme/paddings.dart';
import 'package:triply/core/theme/styles/text_styles/text_styles.dart';

class ShowSuccessMessage extends StatelessWidget {
  const ShowSuccessMessage({
    super.key,
    required this.showMessage,
    required this.successMessage,
  });
  final bool showMessage;
  final String successMessage;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      reverseDuration: const Duration(milliseconds: 300),
      switchInCurve: Curves.easeInOut,
      switchOutCurve: Curves.fastOutSlowIn,
      child: showMessage
          ? SuccessContainer(error: successMessage)
          : const SizedBox.shrink(),
    );
  }
}

class SuccessContainer extends StatelessWidget {
  const SuccessContainer({super.key, required this.error});
  final String error;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          Container(
            width: width * .8,
            decoration: BoxDecoration(
              borderRadius: Paddings.circular10,
              color: ThemeColors.baseGreen,
            ),
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: Paddings.all8,
                child: Text(
                  error,
                  style: context.textStyle(fontSize12Weight800White),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
