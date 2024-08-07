import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resonsive_dash_board/widgets/all_expensess_and_quick_invoicw_section.dart';
import 'package:resonsive_dash_board/widgets/custom_drawer.dart';
import 'package:resonsive_dash_board/widgets/income_section.dart';
import 'package:resonsive_dash_board/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 40),
                child: AllExpensessAndQuickInvoiceSection(),
              )),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40,),
                MyCardsAndTransactionHistorySection(),
                SizedBox(height: 20,),
                IncomeSection(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
