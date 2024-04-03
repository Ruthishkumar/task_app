import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';

class AssetsContainerCardWidget extends StatelessWidget {
  const AssetsContainerCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map> assetCardList = [
      {
        'ornamentsHeader': 'Gold',
        'ornamentsPrice': '\$22,645.64',
        'ornamentsOz': '11.050 oz',
        'ornamentsPercentage': '0.97 %',
        'metalValue': '\$1,999.00',
        'metalPercentage': '-0.4 %',
      },
      {
        'ornamentsHeader': 'Silver',
        'ornamentsPrice': '\$0.00',
        'ornamentsOz': '0.000 oz',
        'ornamentsPercentage': '0.0 %',
        'metalValue': '\$26.20',
        'metalPercentage': '-0.15 %',
      },
      {
        'ornamentsHeader': 'Platinum',
        'ornamentsPrice': '\$0.00',
        'ornamentsOz': '0.000 oz',
        'ornamentsPercentage': '0.0 %',
        'metalValue': '\$1,102.30',
        'metalPercentage': '-0.08 %',
      }
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: assetCardList.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            Card(
              color: AppColors.appBackgroundColor,
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(6.sp))),
              child: Container(
                padding: EdgeInsets.all(14.sp),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(12.sp),
                              decoration: BoxDecoration(
                                  color: getContainerColorWidget(index),
                                  shape: BoxShape.circle),
                              child: Icon(Icons.scatter_plot_outlined,
                                  color: getIconColorWidget(index)),
                            ),
                            SizedBox(width: 15.sp),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  assetCardList[index]['ornamentsHeader'],
                                  style: getTextColorWidget(index),
                                ),
                                SizedBox(height: 5.sp),
                                Text(
                                  assetCardList[index]['ornamentsOz'],
                                  style: AppStyles.instance.subHeaderTextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15.sp),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              assetCardList[index]['ornamentsPrice'],
                              style: AppStyles.instance.blackTextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                            SizedBox(height: 5.sp),
                            Text(
                              assetCardList[index]['ornamentsPercentage'],
                              style: AppStyles.instance.subHeaderTextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 15.sp),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.sp),
                    Divider(
                      color: AppColors.appSubHeaderTextColor.withOpacity(0.3),
                    ),
                    SizedBox(height: 10.sp),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Metal Price',
                                style: AppStyles.instance.subHeaderTextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp)),
                            SizedBox(height: 5.sp),
                            Text(
                              assetCardList[index]['metalValue'],
                              style: AppStyles.instance.blackTextStyle(
                                  fontSize: 18.sp, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Change',
                                style: AppStyles.instance.subHeaderTextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp)),
                            SizedBox(height: 5.sp),
                            Text(assetCardList[index]['metalPercentage'],
                                style: AppStyles.instance.metalValueTextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.sp))
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 12.sp,
            )
          ],
        );
      },
    );
  }

  /// get container color widget
  getContainerColorWidget(int index) {
    if (index == 0) {
      return AppColors().appOrangeTextColor.withOpacity(0.4);
    } else if (index == 1) {
      return AppColors().appGreyTextColor.withOpacity(0.6);
    } else if (index == 2) {
      return AppColors().appPurpleTextColor.withOpacity(0.4);
    }
  }

  /// get icon color widget
  getIconColorWidget(int index) {
    if (index == 0) {
      return AppColors().appOrangeTextColor;
    } else if (index == 1) {
      return AppColors().appGreyTextColor;
    } else if (index == 2) {
      return AppColors().appPurpleTextColor;
    }
  }

  /// get text color widget
  getTextColorWidget(int index) {
    if (index == 0) {
      return AppStyles.instance.ornamentsTextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: AppColors().appOrangeTextColor);
    } else if (index == 1) {
      return AppStyles.instance.ornamentsTextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: AppColors().appGreyTextColor);
    } else if (index == 2) {
      return AppStyles.instance.ornamentsTextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
          color: AppColors().appPurpleTextColor);
    }
  }
}
