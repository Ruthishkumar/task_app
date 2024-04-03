import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';
import 'package:task_app/utils/screen_container.dart';
import 'package:task_app/view/features/screens/center_docked_screen.dart';
import 'package:task_app/view/features/screens/home_screen.dart';
import 'package:task_app/view/features/screens/portfolio_screen.dart';
import 'package:task_app/view/features/screens/prices_screen.dart';
import 'package:task_app/view/features/screens/settings_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int selectedIndex = 0;

  /// get body widget
  Widget getBody(int index) {
    switch (index) {
      case 0:
        return const HomeScreen();
      case 1:
        return const PortfolioScreen();
      case 2:
        return const CenterDockedScreen();
      case 3:
        return const PricesScreen();
      case 4:
        return const SettingsScreen();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
      appBackGroundColor: AppColors.appBackgroundColor,
      bodyWidget: getBody(selectedIndex),
      bottomWidget: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedItemColor: AppColors.appPrimaryColor,
        unselectedItemColor: AppColors.appSubHeaderTextColor,
        currentIndex: selectedIndex,
        selectedLabelStyle: AppStyles.instance
            .primaryTextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
        unselectedLabelStyle: AppStyles.instance
            .subHeaderTextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
        selectedFontSize: 14.sp,
        unselectedFontSize: 14.sp,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
                color: selectedIndex == 0
                    ? AppColors.appPrimaryColor
                    : AppColors.appSubHeaderTextColor),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.pie_chart_outline_rounded,
                  color: selectedIndex == 1
                      ? AppColors.appPrimaryColor
                      : AppColors.appSubHeaderTextColor),
              label: 'Portfolio'),
          BottomNavigationBarItem(
            activeIcon: null,
            icon: Container(
                padding: EdgeInsets.all(12.sp),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColors.appPrimaryColor),
                child: const Icon(
                  Icons.attachment_outlined,
                  color: AppColors.appBackgroundColor,
                )),
            label: '',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.price_change_sharp,
                  color: selectedIndex == 3
                      ? AppColors.appPrimaryColor
                      : AppColors.appSubHeaderTextColor),
              label: 'Prices'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings,
                  color: selectedIndex == 4
                      ? AppColors.appPrimaryColor
                      : AppColors.appSubHeaderTextColor),
              label: 'Settings'),
        ],
      ),
    );
  }
}
