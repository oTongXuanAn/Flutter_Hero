import 'package:hlenglish/models/chuckResponse.dart';
import 'package:hlenglish/networking/ApiProvider.dart';

class ChuckRepository {
  ApiProvider _provider = ApiProvider();

  Future<chuckResponse> fetchChuckJoke(String category) async {
    final response = await _provider.get("jokes/random?category=" + category);
    return chuckResponse.fromJsonMap(response);
  }
}