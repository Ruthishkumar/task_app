import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';
import 'package:task_app/utils/screen_container.dart';

class PricesScreen extends StatefulWidget {
  const PricesScreen({super.key});

  @override
  State<PricesScreen> createState() => _PricesScreenState();
}

class _PricesScreenState extends State<PricesScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        appBackGroundColor: AppColors.appBackgroundColor,
        bodyWidget: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'This Page Is Under Processing',
                style: AppStyles.instance.blackTextStyle(
                    fontSize: 20.sp, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
