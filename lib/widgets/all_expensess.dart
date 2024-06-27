import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/widgets/all_expensess_header.dart';
import 'package:resonsive_dash_board/widgets/all_expensess_items_listview.dart';
import 'package:resonsive_dash_board/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemsListView()
        ],
      ),
    );
  }
}

