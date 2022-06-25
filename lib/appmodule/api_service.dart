import 'package:http/http.dart' as http;
import 'package:shimmer_effect_flutter_getx/network/endpoint.dart';
import '../sampledatamodule/model/SampleData.dart';

class ApiService {
  static var client = http.Client();

  static Future<List<SampleData>> fetchSampleData() async {
    var response = await client.get(Uri.parse(sampleDataUrl));
    var jsonString = response.body;
    return sampleDataFromJson(jsonString);
  }
}
