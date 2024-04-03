import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_mixins.dart';
import 'package:task_app/utils/app_styles.dart';
import 'package:task_app/view/model/get_service_response_model.dart';

class LegsDataCardWidget extends StatefulWidget {
  final GetServiceResponseModel? getServiceResponseModel;
  const LegsDataCardWidget({super.key, required this.getServiceResponseModel});

  @override
  State<LegsDataCardWidget> createState() => _LegsDataCardWidgetState();
}

class _LegsDataCardWidgetState extends State<LegsDataCardWidget>
    with AppMixins {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Legs Data',
          style: AppStyles.instance
              .blackTextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
        ),
        SizedBox(height: 12.sp),
        for (int i = 0; i < widget.getServiceResponseModel!.routes.length; i++)
          ListView.builder(
              shrinkWrap: true,
              itemCount: widget.getServiceResponseModel!.routes[i].legs.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Card(
                      color: AppColors.appBackgroundColor,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(6.sp))),
                      child: Container(
                        padding: EdgeInsets.all(14.sp),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            getLegsLocationWidget(
                                startValue: 'Start Location Value',
                                startLatHeader: 'Latitude',
                                startLat: widget.getServiceResponseModel!
                                    .routes[i].legs[index].start_location.lat
                                    .toString(),
                                startLngHeader: 'Longitude',
                                startLng: widget.getServiceResponseModel!
                                    .routes[i].legs[index].start_location.lng
                                    .toString(),
                                startAddressHeader: 'Address',
                                startAddress: widget.getServiceResponseModel!
                                    .routes[i].legs[index].start_address
                                    .toString(),
                                endValue: 'End Location Value',
                                endLatHeader: 'Latitude',
                                endLat: widget.getServiceResponseModel!
                                    .routes[i].legs[index].end_location.lat
                                    .toString(),
                                endLngHeader: 'Longitude',
                                endLng: widget.getServiceResponseModel!
                                    .routes[index].legs[i].end_location.lng
                                    .toString(),
                                endAddressHeader: 'Address',
                                endAddress: widget.getServiceResponseModel!
                                    .routes[index].legs[i].end_address
                                    .toString()),
                            SizedBox(height: 12.sp),
                            Divider(
                              color: AppColors.appSubHeaderTextColor
                                  .withOpacity(0.2),
                            ),
                            SizedBox(height: 12.sp),
                            getLegsWithStepsLocationWidget(
                                startValue: 'Total Distance',
                                startLatHeader: 'Distance',
                                startLat: widget.getServiceResponseModel!
                                    .routes[i].legs[index].distance.text
                                    .toString(),
                                startLngHeader: 'Value',
                                startLng: widget.getServiceResponseModel!
                                    .routes[i].legs[index].distance.value
                                    .toString(),
                                endValue: 'Total Duration',
                                endLatHeader: 'Duration',
                                endLat: widget.getServiceResponseModel!
                                    .routes[i].legs[index].duration.text
                                    .toString(),
                                endLngHeader: 'Value',
                                endLng: widget.getServiceResponseModel!
                                    .routes[i].legs[index].duration.value
                                    .toString()),
                          ],
                        ),
                      ),
                    )
                  ],
                );
              }),
        SizedBox(height: 20.sp),
        Text(
          'Legs with Steps Data',
          style: AppStyles.instance
              .blackTextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
        ),
        SizedBox(height: 12.sp),
        for (int j = 0; j < widget.getServiceResponseModel!.routes.length; j++)
          for (int k = 0;
              k < widget.getServiceResponseModel!.routes[j].legs.length;
              k++)
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: widget
                    .getServiceResponseModel!.routes[j].legs[k].steps.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Card(
                        color: AppColors.appBackgroundColor,
                        elevation: 1,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.sp))),
                        child: Container(
                          padding: EdgeInsets.all(14.sp),
                          child: Column(
                            children: [
                              getLegsWithStepsLocationWidget(
                                startValue: 'Start Location Value',
                                startLatHeader: 'Latitude',
                                startLat: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .start_location
                                    .lat
                                    .toString(),
                                startLngHeader: 'Longitude',
                                startLng: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .end_location
                                    .lng
                                    .toString(),
                                endValue: 'End Location Value',
                                endLatHeader: 'Latitude',
                                endLat: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .end_location
                                    .lat
                                    .toString(),
                                endLngHeader: 'Longitude',
                                endLng: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .end_location
                                    .lng
                                    .toString(),
                              ),
                              SizedBox(height: 12.sp),
                              Divider(
                                  color: AppColors.appSubHeaderTextColor
                                      .withOpacity(0.2)),
                              SizedBox(height: 12.sp),
                              getLegsWithStepsLocationWidget(
                                startValue: 'Total Distance',
                                startLatHeader: 'Distance',
                                startLat: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .distance
                                    .text
                                    .toString(),
                                startLngHeader: 'Value',
                                startLng: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .distance
                                    .value
                                    .toString(),
                                endValue: 'Total Duration',
                                endLatHeader: 'Duration',
                                endLat: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .duration
                                    .text
                                    .toString(),
                                endLngHeader: 'Value',
                                endLng: widget
                                    .getServiceResponseModel!
                                    .routes[j]
                                    .legs[k]
                                    .steps[index]
                                    .duration
                                    .value
                                    .toString(),
                              ),
                              SizedBox(height: 12.sp),
                              Divider(
                                  color: AppColors.appSubHeaderTextColor
                                      .withOpacity(0.2)),
                              SizedBox(height: 12.sp),
                              getLatLngWidget(
                                  title: 'Travel Mode :',
                                  value: widget
                                      .getServiceResponseModel!
                                      .routes[j]
                                      .legs[k]
                                      .steps[index]
                                      .travel_mode
                                      .toString()),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.sp),
                    ],
                  );
                })
      ],
    );
  }
}
