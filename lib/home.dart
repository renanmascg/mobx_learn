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
      body: Observer(builder: (_) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                decoration: InputDecoration(labelText: 'Nome'),
                onChanged: _controller.changeName,
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Sobrenome'),
                onChanged: _controller.changeSobrenome,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text('${_controller.nomeCompleto}')
            ],
          ),
        );
      }),
    );
  }
}
