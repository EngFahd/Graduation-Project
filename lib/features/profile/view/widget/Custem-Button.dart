import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  CustemButton({super.key, this.onTap, this.height, required this.text});
  VoidCallback? onTap;
  // String title;
  final double? height;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height,
        // color: Color(0xff104168),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff104168),
        ),
        width: double.infinity,
        child: Center(
            child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
