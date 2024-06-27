import 'package:flutter/material.dart';
import 'package:resonsive_dash_board/widgets/adaptive_layout_widget.dart';
import 'package:resonsive_dash_board/widgets/custom_drawer.dart';
import 'package:resonsive_dash_board/widgets/dashboard_desktop_layout.dart';
import 'package:resonsive_dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:resonsive_dash_board/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      appBar: MediaQuery.of(context).size.width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: Color(0xFFFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      drawer:
          MediaQuery.of(context).size.width < 800 ? const CustomDrawer() : null,
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
          mobilelayout: (context) => const DashBoardMobileLayout(),
          tabletlayout: (context) => const DashBOardTabletLayout(),
          desktoplayout: (context) => const DashBoardDesktopLayout()),
    );
  }
}
