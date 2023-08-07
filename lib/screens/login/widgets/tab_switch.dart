import 'package:day_night_login/constants/colors.dart';
import 'package:flutter/material.dart';

class TabSwitch extends StatelessWidget {
  const TabSwitch({
    super.key,
    required this.width,
    required this.onTap,
  });

  final double width;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .8,
      decoration: BoxDecoration(color: AppColors.lightBg.withOpacity(.5), borderRadius: BorderRadius.circular(12)),
      child: DefaultTabController(
        length: 2,
        child: TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          indicator: BoxDecoration(color: AppColors.lightBgdark, borderRadius: BorderRadius.circular(12)),
          indicatorColor: AppColors.lightBgdark,
          unselectedLabelColor: AppColors.textDarkColor,
          dividerColor: Colors.transparent,
          onTap: onTap,
          tabs: const [
            Tab(text: "Morning Login"),
            Tab(text: "Night Login"),
          ],
        ),
      ),
    );
  }
}
