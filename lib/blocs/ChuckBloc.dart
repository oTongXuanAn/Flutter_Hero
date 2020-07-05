import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hlenglish/models/chuckResponse.dart';
import 'package:hlenglish/networking/Response.dart';
import 'package:hlenglish/repository/ChuckRepository.dart';

class ChuckBloc extends ChangeNotifier{
  ChuckRepository _chuckRepository;
  StreamController _chuckDataController;
  StreamSink<Response<chuckResponse>> get chuckDataSink =>
      _chuckDataController.sink;
  Stream<Response<chuckResponse>> get chuckDataStream =>
      _chuckDataController.stream;

      ChuckBloc(String category){
        _chuckDataController=StreamController<Response<chuckResponse>>();
        _chuckRepository=ChuckRepository();
        fetchChuckJoke(category);
      }

  fetchChuckJoke(String category) async {
    chuckDataSink.add(Response.loading('Starting'));
    try {
      chuckResponse chuckjoke = await _chuckRepository.fetchChuckJoke(category);
      print("antx " + chuckjoke.toString());
      chuckDataSink.add(Response.completed(chuckjoke));
    } catch (e) {
      chuckDataSink.add(Response.error(e.toString()));
    }
  }


  dispose(){
    _chuckDataController?.close();
  }
}
