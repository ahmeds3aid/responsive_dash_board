import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/utils/app_style.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Text(
          'Quick Invoice',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
