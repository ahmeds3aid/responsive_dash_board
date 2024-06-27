import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundcolor, this.textcolor});
  final Color? backgroundcolor, textcolor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              elevation: 0,
              backgroundColor: backgroundcolor ?? const Color(0xFF4DB7F2)),
          onPressed: () {},
          child:  Text(
            'Send Money',
            style: AppStyle.styleSemiBold18(context).copyWith(color: textcolor),
          )),
    );
  }
}
