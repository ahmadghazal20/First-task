import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatFactController extends GetxController {
  var fact = 'Loading...'.obs;

  @override
  void onInit() {
    super.onInit();
    fetchCatFact();
  }

  void fetchCatFact() async {
    try {
      final response = await http.get(Uri.parse('https://catfact.ninja/fact'));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        fact.value = data['fact'];
      } else {
        fact.value = 'Failed to load fact.';
      }
    } catch (e) {
      fact.value = 'Error occurred.';
    }
  }
}
