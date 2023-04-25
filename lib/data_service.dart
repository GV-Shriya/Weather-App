import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:myapp/models.dart';

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    final queryParameters = {
      'q': city,
      'appid': 'd2cbbd4dbd4a254c1ed9dcc34bf2d952',
      'units': 'metric',
    };
    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParameters);
    final response = await http.get(uri);

    final json = jsonDecode(response.body);
    return WeatherResponse.fromJSON(json);
  }
}
