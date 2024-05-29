import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool isPrimary;
  final double width;
  final double height;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.isPrimary = true,
    this.width = 155,
    this.height = 54,
    this.borderRadius = 18,
    this.padding = const EdgeInsets.only(
      top: 16,
      right: 24,
      bottom: 16,
      left: 24,
    ),
    this.textStyle = const TextStyle(
      fontFamily: "Nunito",
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: Color(0xff304FFE),
            width: 1,
          ),
          color: isPrimary ? Color(0xff304FFE) : Colors.white,
        ),
        child: Center(
          child: Text(
            text,
            style: textStyle.copyWith(
              color: isPrimary ? Colors.white : Color(0xff304FFE),
            ),
          ),
        ),
      ),
    );
  }
}
