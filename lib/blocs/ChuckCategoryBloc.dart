import 'dart:async';

import 'package:hlenglish/models/chuckCategories.dart';
import 'package:hlenglish/networking/Response.dart';
import 'package:hlenglish/repository/ChuckCategoryRepository.dart';
import 'package:logger/logger.dart';

class ChuckCategoryBloc{
  ChuckCategoryRepository _chuckRepository;
  StreamController _chuckListController;
  StreamSink<Response<chuckCategories>> get chuckListSink => _chuckListController.sink;
  Stream<Response<chuckCategories>> get chuckListStream => _chuckListController.stream;

ChuckCategoryBloc() {
    _chuckListController = StreamController<Response<chuckCategories>>();
    _chuckRepository = ChuckCategoryRepository();
    fetchCategories();
  }
  var logger = Logger(
    printer: PrettyPrinter(),
  );

  var loggerNoStack = Logger(
    printer: PrettyPrinter(methodCount: 0),
  );



  fetchCategories() async {
    chuckListSink.add(Response.loading('Getting Chuck Categories.'));
    try {
      chuckCategories chuckCats =
          await _chuckRepository.fetchChuckCategoryData();
      logger.e("antx",chuckCats.categories.toString());
      chuckListSink.add(Response.completed(chuckCats));
    } catch (e) {
      chuckListSink.add(Response.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _chuckListController?.close();
  }
}