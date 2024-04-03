import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_app/utils/app_colors.dart';
import 'package:task_app/utils/app_mixins.dart';
import 'package:task_app/utils/app_styles.dart';
import 'package:task_app/view/model/get_service_response_model.dart';

class BoundDataCardWidget extends StatefulWidget {
  final GetServiceResponseModel? getServiceResponseModel;

  const BoundDataCardWidget({super.key, required this.getServiceResponseModel});

  @override
  State<BoundDataCardWidget> createState() => _BoundDataCardWidgetState();
}

class _BoundDataCardWidgetState extends State<BoundDataCardWidget>
    with AppMixins {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Bounds Data',
          style: AppStyles.instance
              .blackTextStyle(fontWeight: FontWeight.w700, fontSize: 20.sp),
        ),
        SizedBox(height: 12.sp),
        ListView.builder(
            shrinkWrap: true,
            itemCount: widget.getServiceResponseModel!.routes.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getLegsWithStepsLocationWidget(
                              startValue: 'NorthEast Value',
                              startLatHeader: 'Latitude ',
                              startLat: widget.getServiceResponseModel
                                      ?.routes[index].bounds.northeast.lat
                                      .toString() ??
                                  '',
                              startLngHeader: 'Longitude ',
                              startLng: widget.getServiceResponseModel
                                      ?.routes[index].bounds.northeast.lng
                                      .toString() ??
                                  '',
                              endValue: 'Southwest Value ',
                              endLatHeader: 'Latitude',
                              endLat: widget.getServiceResponseModel
                                      ?.routes[index].bounds.southwest.lat
                                      .toString() ??
                                  '',
                              endLngHeader: 'Longitude',
                              endLng: widget.getServiceResponseModel
                                      ?.routes[index].bounds.southwest.lng
                                      .toString() ??
                                  ''),
                        ],
                      ),
                    ),
                  )
                ],
              );
            })
      ],
    );
  }
}
