import 'dart:async';

class CounterStream{
  int _counter=0;
  final StreamController<int> _streamController= StreamController();
  void increment(){
    _counter++;
    _streamController.sink.add(_counter);
  }
  void decrement(){
    if(_counter<1) return;
    _counter--;
    _streamController.sink.add(_counter);
  }
  get streamController=>_streamController.stream;
  void dispose(){
    _streamController.close();
  }
}