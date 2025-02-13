import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/planet.dart';
import '../constants/api_constants.dart';

class PlanetApi {
  Future<List<Planet>> fetchPlanets() async {
    final response = await http.get(Uri.parse(ApiConstants.baseUrl));
    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((e) => Planet.fromMap(e)).toList();
    } else {
      throw Exception('Erro ao carregar planetas');
    }
  }
}
```
