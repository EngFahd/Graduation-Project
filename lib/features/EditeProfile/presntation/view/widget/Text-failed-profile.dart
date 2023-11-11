import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utils/service/styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextFeildProfile extends StatelessWidget {
  const TextFeildProfile({
    super.key,
    required this.hint,
    this.wideth,
    this.iconInp,
  });
  final String hint;
  final double? wideth;
  final Icon? iconInp;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: wideth ?? double.infinity,
      child: TextField(
        // cursorColor: Colors.white,
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: Styles.text18Hint,
            suffixIcon: IconButton(
                onPressed: () {},
                icon: iconInp ??
                    const Icon(
                      FontAwesomeIcons.check,
                      color: Color(0xff104168),
                    )),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    // color: Colors.red
                    color: Color(0xffB8B8B8)),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                    // color: Colors.red
                    color: Color(0xffB8B8B8)),
                borderRadius: BorderRadius.all(Radius.circular(4))),
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4)))),
      ),
    );
  }
}
