import 'package:flutter/material.dart';

void main() {
  runApp(const MisIconos());
}//fin main

class MisIconos extends StatelessWidget {
  const MisIconos({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
               title: Text('Johana Moras Mat: 22308051280458',style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 255, 255, 255)),),
          backgroundColor: const Color.fromARGB(255, 173, 168, 154),
          centerTitle: true,
        ),
        body: Center( // Centramos el Row en el body
          child: Row(
            children: <Widget>[
              Expanded(
                child: _buildIconWithSubtitle(Icons.home, 'Inicio', color: Colors.blue, size: 30),
              ),
              Expanded(
                child: _buildIconWithSubtitle(Icons.search, 'Buscar', color: Colors.green, size: 30),
              ),
              Expanded(
                child: _buildIconWithSubtitle(Icons.favorite, 'Favoritos', color: Colors.red, size: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconWithSubtitle(IconData icon, String subtitle, {Color? color, double? size}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(icon, color: color, size: size),
        SizedBox(height: 4),
        Text(subtitle, style: TextStyle(fontSize: 12), textAlign: TextAlign.center),
      ],
    );
  }
}

 