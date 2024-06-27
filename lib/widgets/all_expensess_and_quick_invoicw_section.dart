import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/widgets/all_expensess.dart';
import 'package:resonsive_dash_board/widgets/quick_invoice.dart';

class AllExpensessAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensessAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        
        AllExpensess(),
        SizedBox(
          height: 20,
        ),
        QuickInvoice(),
      ],
    );
  }
}
