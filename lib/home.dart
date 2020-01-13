import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_aula_01/controller.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobx Flutter'),
      ),
      body: Center(
        child: Observer(
          builder:(_) {
            return Text(
              '${_controller.counter}',
              style: TextStyle(fontSize: 20),
            );
          }
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
