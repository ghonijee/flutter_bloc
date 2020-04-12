import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { TO_EMBER, TO_BLUE }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber[800];

  @override
  Color get initialState => Colors.amber[800]; //ini adalah nilai default

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
     _color = (event == ColorEvent.TO_BLUE) ? Colors.blue : Colors.amber[800];
    yield _color; //add data ke stream setelah dirubah
  }
}
