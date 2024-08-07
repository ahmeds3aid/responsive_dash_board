import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resonsive_dash_board/widgets/custom_background_container.dart';
import 'package:resonsive_dash_board/widgets/income_chart.dart';
import 'package:resonsive_dash_board/widgets/income_details.dart';
import 'package:resonsive_dash_board/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: IncomeChart()),
            Expanded(child: IncomeDetails()),
          ],
        )
      ],
    ));
  }
}
