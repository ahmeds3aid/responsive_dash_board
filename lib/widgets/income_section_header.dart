
import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/utils/app_style.dart';
import 'package:resonsive_dash_board/widgets/range_options.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Income',style: AppStyle.styleSemiBold20(context),),
        const RangeOptions()
      ],
    );
  }
}