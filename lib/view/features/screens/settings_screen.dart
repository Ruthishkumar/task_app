import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_styles.dart';
import 'package:task_app/utils/screen_container.dart';
import 'package:task_app/view/features/widgets/bound_data_card_widget.dart';
import 'package:task_app/view/features/widgets/legs_data_card_widget.dart';
import 'package:task_app/view/model/get_service_response_model.dart';
import 'package:task_app/view/repository/service_repository.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  GetServiceResponseModel? getServiceResponse;

  @override
  void initState() {
    getPopulateData();
    super.initState();
  }

  bool loader = false;

  /// get populate data method
  getPopulateData() async {
    loader = true;
    setState(() {});
    getServiceResponse = await ServiceRepository().getServiceData();
    loader = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScreenContainer(
        appBackGroundColor: AppColors.appBackgroundColor,
        appBarWidget: appBarWidget(),
        bodyWidget: loader
            ? const Center(
                child: CircularProgressIndicator(
                color: AppColors.appPrimaryColor,
              ))
            : Container(
                padding: EdgeInsets.fromLTRB(20.sp, 40.sp, 20.sp, 40.sp),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      BoundDataCardWidget(
                          getServiceResponseModel: getServiceResponse),
                      SizedBox(height: 20.sp),
                      LegsDataCardWidget(
                        getServiceResponseModel: getServiceResponse,
                      )
                    ],
                  ),
                ),
              ));
  }

  /// app bar widget
  appBarWidget() {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: true,
      backgroundColor: AppColors.appPrimaryColor,
      title: Text('Bounds and Legs',
          style: AppStyles.instance
              .whiteTextStyle(fontSize: 20.sp, fontWeight: FontWeight.w500)),
    );
  }
}
