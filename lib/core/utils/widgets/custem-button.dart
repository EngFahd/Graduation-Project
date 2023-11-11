
import 'package:flutter/material.dart';

class CustemButton extends StatelessWidget {
  CustemButton({super.key, this.onTap});
  VoidCallback? onTap;
  // String title;
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
        child: const Center(
            child: Text(
          'Edite',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        )),
      ),
    );
  }
}
