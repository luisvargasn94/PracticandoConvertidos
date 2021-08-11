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
    'Libras',
    'Onzas'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyDrawer());
  }
}

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  String _luiM = '';
  Widget build(BuildContext context) {
    String _miimage =
        'https://images.unsplash.com/photo-1628613779039-7a71e2df81d5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=626&q=80';
    return Scaffold(
      appBar: AppBar(title: Text('Convertidor de Unidades')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: NetworkImage(_miimage), fit: BoxFit.cover),

                // image: CircleAvatar(backgroundImage: NetworkImage(_miimage)),
              ),
              child: Text('mi hader'),
            ),
            ListTile(
              title: const Text('Centimetros'),
              onTap: () {
                _mifuncion(context, 'centimetros');
              },
            ),
            ListTile(
              title: const Text('Metros'),
              onTap: () {
                _mifuncion(context, 'Metros');
              },
            ),
            ListTile(
              title: const Text('Kilometros'),
              onTap: () {
                _mifuncion(context, 'Kilometros');
              },
            ),
            ListTile(
              title: const Text('Pies'),
              onTap: () {
                _mifuncion(context, 'Pies');
              },
            ),
            ListTile(
              title: const Text('Millas'),
              onTap: () {
                _mifuncion(context, 'Millas');
              },
            ),
            ListTile(
              title: const Text('Libras'),
              onTap: () {
                _mifuncion(context, 'Libras');
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Onzas'),
              onTap: () {
                _mifuncion(context, 'Onzas');
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
        child: Column(children: [
          Column(
            children: [
              Text(
                _luiM.toString(),
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 30.0,
                  backgroundColor: Colors.yellow,
                ),
              ),
            ],
          ),
          Text(_luiM),
          TextField(
            onChanged: (value) {
              print(value);
            },
          ),

          // DropdownButton<String>(
          //     value: _luiM,
          //     items: _medidas.map((m) {
          //       return DropdownMenuItem(value: m, child: Text(m));
          //     }).toList(),
          //     onChanged: (value) {
          //       print(_luiM);
          //       setState(() {});
          //     })
        ]),
      ),
    );
  }

  void _mifuncion(BuildContext context, String mistring) {
    setState(() {
      _luiM = mistring;
    });
    Navigator.pop(context);
  }
}
