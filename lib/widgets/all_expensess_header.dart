import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resonsive_dash_board/utils/app_style.dart';
import 'package:resonsive_dash_board/widgets/range_options.dart';

class AllExpensessHeader extends StatelessWidget {
  const AllExpensessHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          'All Expensess',
          style: AppStyle.styleSemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOptions()
      ],
    );
  }
}

