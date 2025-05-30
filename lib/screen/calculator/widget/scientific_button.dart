import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ScientificButton extends StatelessWidget {
  final Color color;
  final Color textColor;
  final double? width;
  final String text;
  final VoidCallback buttonTapped;

  const ScientificButton({
    Key? key,
    required this.color,
    required this.textColor,
    required this.text,
    required this.buttonTapped,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final bool isTablet = screenWidth > 1000;

    double fontSize = isTablet ? 10.sp : 15.sp;
    return GestureDetector(
      onTap: buttonTapped,
      child: Container(
        width: width ?? double.infinity,
        // margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(4.w),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: textColor,
              fontSize: fontSize,
              // 10.sp,
              // fontWeight: FontWeight.bold,
              // fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
