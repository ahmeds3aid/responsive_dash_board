import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/widgets/custom_background_container.dart';
import 'package:resonsive_dash_board/widgets/latest_transaction.dart';
import 'package:resonsive_dash_board/widgets/quick_invoice_form.dart';
import 'package:resonsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 25,),
        LatestTransaction(),
        Divider(
          height: 48,
        ),
        QuickInvoiceForm()
      ],
    ));
  }
}
