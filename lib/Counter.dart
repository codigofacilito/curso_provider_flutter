import 'package:flutter/cupertino.dart';

class Counter extends ChangeNotifier{
  int _count = 0;

  int get count => _count;
  int get add => _count +_count;
  int get multiply => _count*_count;
  void increment(){
    _count++;
    notifyListeners();
  }
  Future<String> get fetchName{
    final name = Future.delayed(Duration(seconds: 2),(){
      return "Marines Mendez";
    });
    return name;
  }

  Stream<int> countForOneMinute()async*{
    for(int i =1; i<=60; i++){
      await Future.delayed(Duration(seconds: 1));
      yield i;
    }
  }

}