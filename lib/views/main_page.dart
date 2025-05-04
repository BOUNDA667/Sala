import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/task_controller.dart';
import 'package:sala/views/calendar_page/calendar_page.dart';

import 'calendar_page/components/bottom_nav_bar.dart';
import 'library_page/library_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TaskController controller = Get.put(TaskController());
  final PageController _pageCtrl = PageController();

  final _pages = [
    CalendarPage(),
    LibraryPage(),
  ];

  @override
  void initState() {
    super.initState();
    // Sync GetX → PageView
    ever(controller.selectedNavIndex, (idx) {
      _pageCtrl.animateToPage(
        idx,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: Obx(
        () => BottomNavBar(
          selectedIndex: controller.selectedNavIndex.value,
          onTap: controller.changeNavIndex,
        ),
      ),
      body: PageView(
        controller: _pageCtrl,
        physics: const NeverScrollableScrollPhysics(),
        children: _pages,
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return AppBar(
      backgroundColor: cs.surface,
      centerTitle: false,
      title: const CircleAvatar(
        radius: 20,
        child: FaIcon(FontAwesomeIcons.person),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert_rounded, color: cs.onSurface),
        ),
      ],
    );
  }
}
