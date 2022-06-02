import 'package:curso_provider/Counter.dart';
import 'package:curso_provider/Counter2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TextCounter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Text(
      context.watch<Counter>().count.toString(),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}