import 'package:hlenglish/models/chuckCategories.dart';
import 'package:hlenglish/networking/ApiProvider.dart';

class ChuckCategoryRepository {
  ApiProvider _apiProvider = ApiProvider();
  Future<chuckCategories> fetchChuckCategoryData() async {
    final response=await _apiProvider.get("jokes/categories");
    return chuckCategories.fromJson(response);
  }
}
