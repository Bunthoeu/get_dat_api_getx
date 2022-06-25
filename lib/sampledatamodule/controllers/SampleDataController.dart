import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shimmer_effect_flutter_getx/appmodule/api_service.dart';
import 'package:shimmer_effect_flutter_getx/sampledatamodule/module/SampleData.dart';

class SampleDataController extends GetxController {
  var isLoading = false.obs;
  var sampleDataList=  <SampleData>[].obs;

  @override
  void onInit() {
    fetchSampleData();
    super.onInit();
  }
  void fetchSampleData() async{
    try{
      isLoading(true);
      var sampleData = await ApiService.fetchSampleData();
      if(sampleData!=null) {
          sampleDataList.assignAll(sampleData);
        }
    }
    finally{
      isLoading(false);
    }
  }

}