import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _medidas = [
    'Centimetros',
    'Metros',
    'Kilometros',
    'Pies',
    'Millas',
    'Libras'
        'Onzas'
  ];
  String _luiM = 'Centimetros';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Convertidor de Unidades'),
      ),
      body: Container(
        child: Column(children: [
          Text(_luiM),
          TextField(
            onChanged: (value) {
              print(value);
            },
          ),
          DropdownButton<String>(
              value: _luiM,
              items: _medidas.map((m) {
                return DropdownMenuItem(value: m, child: Text(m));
              }).toList(),
              onChanged: (value) {
                print(_luiM);
                setState(() {});
              })
        ]),
      ),
    ));
  }
}
