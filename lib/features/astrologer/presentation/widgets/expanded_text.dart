import 'package:astro_sagga/core/constants/app_texts.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:astro_sagga/core/constants/app_styles.dart';

class ExpandableText extends StatefulWidget {
  final String text;
  final int trimLength;

  const ExpandableText({
    super.key,
    required this.text,
    this.trimLength = 190,
  });

  @override
  State<ExpandableText> createState() => _ExpandableTextState();
}

class _ExpandableTextState extends State<ExpandableText> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final shouldTrim = widget.text.length > widget.trimLength;

    final visibleText = shouldTrim && !isExpanded
        ? widget.text.substring(0, widget.trimLength)
        : widget.text;

    final suffix = shouldTrim
        ? (isExpanded ? AppTexts.readLess : AppTexts.readMore)
        : '';

    return Text.rich(
      TextSpan(
        text: visibleText,
        style: AppStyles.grey400Size14,
        children: shouldTrim
            ? [
          TextSpan(
            text: suffix,
            style: AppStyles.black600Size14.copyWith(color: Color(0xFF75757C)),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                setState(() => isExpanded = !isExpanded);
              },
          ),
        ]
            : [],
      ),
    );
  }
}
