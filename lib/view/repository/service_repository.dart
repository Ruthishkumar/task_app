import 'dart:convert';

import 'package:task_app/api_client/api_endpoints.dart';
import 'package:task_app/view/model/get_service_response_model.dart';
import 'package:task_app/view/services/shared_data_services.dart';

class ServiceRepository {
  SharedDataServices services = SharedDataServices();

  Future<GetServiceResponseModel> getServiceData() async {
    String? data = await services.getData(url: ApiEndpoints.getRoutes);
    GetServiceResponseModel result =
        GetServiceResponseModel.fromJson(jsonDecode(data));
    return result;
  }
}
