import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resonsive_dash_board/widgets/custom_drawer.dart';
import 'package:resonsive_dash_board/widgets/dashboard_mobile_layout.dart';

class DashBOardTabletLayout extends StatelessWidget {
  const DashBOardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: DashBoardMobileLayout(),
          ),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}


