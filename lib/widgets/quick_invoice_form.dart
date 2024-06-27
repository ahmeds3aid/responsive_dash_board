import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resonsive_dash_board/widgets/custom_button.dart';
import 'package:resonsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 24,
            ),
            Expanded(
                child: TitleTextField(
                    title: 'Customer Email', hint: 'Type customer Email')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 24,
            ),
            Expanded(child: TitleTextField(title: 'Item mount', hint: 'USD')),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundcolor: Colors.white,
                textcolor: Color(0xFF4DB7F2),
              ),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}
