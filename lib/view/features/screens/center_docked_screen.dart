import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';
import 'package:task_app/utils/screen_container.dart';

class CenterDockedScreen extends StatelessWidget {
  const CenterDockedScreen({super.key});

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
