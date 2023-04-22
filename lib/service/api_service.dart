import 'package:http/http.dart' as http;
import 'package:shimmer_effect_flutter_getx/network/endpoint.dart';
import '../model/SampleData.dart';
import '../model/iphone_model.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<SampleData>> fetchSampleData() async {
    var response = await client.get(Uri.parse(sampleDataUrl));
    var jsonString = response.body;
    return sampleDataFromJson(jsonString);
  }
  // static Future<List<Products>> fetchIphone() async {
  //   var response = await client.get(Uri.parse(proDataUrl));
  //   var jsonString = response.body;
  //   return jsonString();
  // }
}
