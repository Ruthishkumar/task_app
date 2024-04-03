import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';

class AppMixins {
  /// get lat and long widget
  getLatLngWidget({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('$title',
            style: AppStyles.instance
                .blackTextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp)),
        Text(value,
            style: AppStyles.instance
                .blackTextStyle(fontWeight: FontWeight.w500, fontSize: 15.sp)),
      ],
    );
  }

  /// get Location data
  getLegsLocationWidget({
    required String startValue,
    required String startLatHeader,
    required String startLat,
    required String startLngHeader,
    required String startLng,
    required String startAddressHeader,
    required String startAddress,
    required String endValue,
    required String endLat,
    required String endLatHeader,
    required String endLng,
    required String endLngHeader,
    required String endAddress,
    required String endAddressHeader,
  }) {
    return Column(
      children: [
        Text(
          startValue,
          style: AppStyles.instance.blackTextStyleWithUnderLine(
              fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
        SizedBox(height: 12.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$startLatHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(startLat,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$startLngHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(startLng,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$startAddressHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(startAddress,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Divider(
          color: AppColors.appSubHeaderTextColor.withOpacity(0.2),
        ),
        SizedBox(height: 6.sp),
        Text(
          endValue,
          style: AppStyles.instance.blackTextStyleWithUnderLine(
              fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
        SizedBox(height: 12.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$endLatHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(endLat,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$endLngHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(endLng,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$endAddressHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(endAddress,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
      ],
    );
  }

  /// get Location data
  getLegsWithStepsLocationWidget({
    required String startValue,
    required String startLatHeader,
    required String startLat,
    required String startLngHeader,
    required String startLng,
    required String endValue,
    required String endLat,
    required String endLatHeader,
    required String endLng,
    required String endLngHeader,
  }) {
    return Column(
      children: [
        Text(
          startValue,
          style: AppStyles.instance.blackTextStyleWithUnderLine(
              fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
        SizedBox(height: 12.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$startLatHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(startLat,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$startLngHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(startLng,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Divider(
          color: AppColors.appSubHeaderTextColor.withOpacity(0.2),
        ),
        SizedBox(height: 6.sp),
        Text(
          endValue,
          style: AppStyles.instance.blackTextStyleWithUnderLine(
              fontWeight: FontWeight.bold, fontSize: 15.sp),
        ),
        SizedBox(height: 12.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$endLatHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(endLat,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
        SizedBox(height: 6.sp),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('$endLngHeader : ',
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
            Text(endLng,
                style: AppStyles.instance.blackTextStyle(
                    fontWeight: FontWeight.w500, fontSize: 15.sp)),
          ],
        ),
      ],
    );
  }
}
