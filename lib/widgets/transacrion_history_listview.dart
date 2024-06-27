import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/models/transaction_model.dart';
import 'package:resonsive_dash_board/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      iswithdrawal: true,
    ),
    TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      iswithdrawal: false,
    ),
    TransactionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      iswithdrawal: false,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionItem(transactionModel: items[index]);
        });
  }
}
