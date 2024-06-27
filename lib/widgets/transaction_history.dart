import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/utils/app_style.dart';
import 'package:resonsive_dash_board/widgets/transacrion_history_listview.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 Apri 2022',
          style: AppStyle.styleRegular16(context),
        ),
        const SizedBox(height: 16,),
        const TransactionHistoryListView()
      ],
    );
  }
}

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          'Transaction History',
          style: AppStyle.styleSemiBold20(context),
        ),
        Text(
          'see all',
          style:
              AppStyle.styleMedium16(context).copyWith(color: const Color(0xFF4EB7F2)),
        )
      ],
    );
  }
}
