import 'package:flutter/material.dart';
import 'package:food_delivery_meal/common/color_extension.dart';

enum RoundedButtonType { bgPrimary, textPrimary }

class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final RoundedButtonType type;
  final String title;
  const RoundedButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.type = RoundedButtonType.bgPrimary,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 48,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: type == RoundedButtonType.bgPrimary
              ? null
              : Border.all(
                  color: TColor.primary,
                  width: 1,
                ),
          color: type == RoundedButtonType.bgPrimary
              ? TColor.primary
              : TColor.white,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: type == RoundedButtonType.textPrimary
                ? TColor.primary
                : TColor.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
