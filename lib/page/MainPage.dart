import 'package:bloc_state/bloc/ColorBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.TO_EMBER);
            },
            backgroundColor: Colors.amber[800],
          ),
          SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.dispatch(ColorEvent.TO_BLUE);
            },
            backgroundColor: Colors.blue,
          )
        ],
      ),
      appBar: AppBar(
        title: Text("Bloc dgn Library"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
            builder: (context, newColor) {
              return AnimatedContainer(
                duration: Duration(milliseconds: 500),
                width: 100,
                height: 100,
                color: newColor,
              );
            }),
      ),
    );
  }
}
