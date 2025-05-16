import 'package:astro_sagga/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FloatingContactButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final Color color;

  const FloatingContactButton({
    super.key,
    required this.iconPath,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          SvgPicture.asset(iconPath, color: Colors.white),
          const SizedBox(width: 6),
          Text(
            label,
            style: AppStyles.white600Size14.copyWith(fontWeight: FontWeight.w500,shadows: [],decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
