import 'package:warhouse_qr_code/common/colors/app_colors.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:warhouse_qr_code/common/widgets/scale_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.loading = false,
    this.disabled = false,
    required this.onTap,
    required this.text,
    this.backgroundColor = const Color(0xFF2C2C3D),
    this.borderColor,
    this.size = 16,
    this.fontWeight = 400,
    this.color = AppColors.white,
    this.width = double.infinity,
    this.height = 56,
    this.radius = 15,
    this.icon,
  });

  final double? radius;
  final double size;
  final Color? backgroundColor;
  final Color? borderColor;
  final String text;
  final bool loading;
  final bool disabled;
  final Function()? onTap;
  final int fontWeight;
  final double? width;
  final Color color;
  final double? height;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    final Color bgColor = disabled ? Color(0xFF4E4E4E) : backgroundColor!;
    final Color textColor = color;

    return WScaleAnimation(
      onTap: () => (!loading && !disabled) ? onTap!() : {},
      child: SizedBox(
        height: height?.r,
        width: width?.r,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius!.r),
              ),
              side: BorderSide(
                color: borderColor ?? Color(0xFF4E4E4E) ,
                width: 1.0,
              ),
            ),
            onPressed: (!loading && !disabled) ? onTap : null,
            child: loading
                ? const CircularProgressIndicator()
                : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  icon!,
                ],
                text.s(size.r).w(fontWeight).c(textColor)
              ],
            )),
      ),
    );
  }
}
