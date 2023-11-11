import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  CustemButton({super.key, this.onTap, this.title});
  VoidCallback? onTap;
  final String? title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        // color: Color(0xff104168),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff104168),
        ),
        width: double.infinity,
        child: Center(
            child: Text(
          title ?? "Edite",
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
