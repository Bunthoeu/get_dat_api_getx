import 'dart:convert';

import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shimmer_effect_flutter_getx/model/iphone_model.dart';
import 'package:shimmer_effect_flutter_getx/network/endpoint.dart';
import 'package:shimmer_effect_flutter_getx/service/api_service.dart';
import '../model/SampleData.dart';
import 'package:http/http.dart' as http;

class SampleDataController extends GetxController {
  var isLoading = false.obs;
  var sampleDataList = <SampleData>[].obs;
 // var iphoneDataList = <Products>[].obs;

  @override
  void onInit() {
    fetchSampleData();
    //fetchIphone();
    super.onInit();
  }

  void fetchSampleData() async {
    try {
      isLoading(true);
      var sampleData = await ApiService.fetchSampleData();
      if (sampleData != null) {
        sampleDataList.assignAll(sampleData);
      }
    } finally {
      isLoading(false);
    }
  }

  // Future<void> fetchIphone() async {
  //   try {
  //     isLoading(true);

  //     final iphoneList = await http.get(Uri.parse(proDataUrl));
  //     if (iphoneList.statusCode == 200) {
  //       var jsonDataIphone = jsonDecode(iphoneList.body);
  //       var data = jsonDataIphone['recorde'];
  //       return .map((e) => Products.fromJson(e)).toList();
  //       // iphoneDataList.assignAll(iphoneList);
  //     }
  //   } finally {
  //     isLoading(false);
  //   }
  // }
}
