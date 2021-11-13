
import 'package:battleground_pro/app/api/api_client.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  ApiClient apiClient  = Get.find();

  callClientInit(){
    apiClient.init();
  }

}
