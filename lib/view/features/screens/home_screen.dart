import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';
import 'package:task_app/utils/screen_container.dart';
import 'package:task_app/view/features/widgets/assets_container_card_widget.dart';
import 'package:task_app/view/features/widgets/visible_header_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        appBackGroundColor: AppColors.appPrimaryColor,
        appBarWidget: appBarWidget(),
        bodyWidget: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: AppColors.appPrimaryColor,
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                automaticallyImplyLeading: false,
                toolbarHeight: 1,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    expandedTitleScale: 1.0,
                    background: Container(
                      color: AppColors.appPrimaryColor,
                      child: Container(
                        padding: EdgeInsets.only(top: 10.sp),
                        child: const Align(
                          alignment: Alignment.topCenter,
                          child: VisibleHeaderWidget(),
                        ),
                      ),
                    )),
              ),
            ];
          },
          body: Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(top: 80),
                height: double.infinity,
                color: AppColors.appBackgroundColor,
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.fromLTRB(12.sp, 0.sp, 12.sp, 20.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const AssetsContainerCardWidget(),
                      SizedBox(height: 40.sp),
                      Text(
                        'Do More with oneGold',
                        style: AppStyles.instance.blackTextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20.sp),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }

  /// app bar widget
  appBarWidget() {
    return AppBar(
      backgroundColor: AppColors.appPrimaryColor,
      toolbarHeight: 100.0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '\$22,650.51',
                style: AppStyles.instance.whiteTextStyle(
                    fontSize: 24.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 14.sp),
              Text(
                'Account Value',
                style: AppStyles.instance.whiteTextStyle(
                    fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 120,
                padding: EdgeInsets.fromLTRB(10.sp, 5.sp, 10.sp, 5.sp),
                decoration: BoxDecoration(
                    color: AppColors.appContainerColor,
                    borderRadius: BorderRadius.all(Radius.circular(60.sp))),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '0.97 %',
                        style: AppStyles.instance.whiteTextStyle(
                            fontSize: 14.sp, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5.sp),
                      const Icon(
                        Icons.arrow_drop_up_outlined,
                        color: AppColors.appIconGreenColor,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.sp),
              Text(
                'Since last purchase',
                style: AppStyles.instance.whiteTextStyle(
                    fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
            ],
          )
        ],
      ),
    );
  }
}
