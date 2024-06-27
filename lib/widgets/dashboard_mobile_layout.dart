import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/widgets/all_expensess_and_quick_invoicw_section.dart';
import 'package:resonsive_dash_board/widgets/income_section.dart';
import 'package:resonsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensessAndQuickInvoiceSection(),
          MyCardsAndTransactionHistorySection(),
          IncomeSection(),
        ],
      ),
    );
  }
}