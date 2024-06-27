import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resonsive_dash_board/utils/app_style.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintStyle: AppStyle.styleRegular16(context),
        hintText: hint,
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder()),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xFFFAFAFA),
        ));
  }
}
