import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';

class StudentInfoItem extends StatelessWidget {
  const StudentInfoItem({
    super.key,
    required this.text,
    required this.iconin,
  });
  final String text;
  final Icon iconin;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        iconin,
        const SizedBox(width: 4),
        Text(
          text,
          style: Styles.text16,
        )
      ],
    );
  }
}
