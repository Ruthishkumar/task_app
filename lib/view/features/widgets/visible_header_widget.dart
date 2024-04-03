import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';

class VisibleHeaderWidget extends StatelessWidget {
  const VisibleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(15.sp, 0.sp, 15.sp, 10.sp),
      child: Column(
        children: [
          const Divider(
            color: AppColors.appBackgroundColor,
          ),
          SizedBox(height: 10.sp),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cash Balance',
                    style: AppStyles.instance.whiteTextStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 8.sp),
                  Row(
                    children: [
                      Text(
                        '\$384.87',
                        style: AppStyles.instance.whiteTextStyle(
                            fontSize: 24.sp, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(width: 4.sp),
                      const Icon(Icons.info_outline_rounded,
                          size: 15, color: AppColors.appBackgroundColor)
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Metal Holidays',
                    style: AppStyles.instance.whiteTextStyle(
                        fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 8.sp),
                  Text(
                    '\$22,650.64',
                    style: AppStyles.instance.whiteTextStyle(
                        fontSize: 24.sp, fontWeight: FontWeight.w700),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
