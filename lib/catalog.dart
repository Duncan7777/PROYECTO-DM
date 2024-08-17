import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Catalogo de Comidas'),
        ),
        body: ListView(

        children: [
          Container(
          color: Colors.yellowAccent,
          padding: const EdgeInsets.all(40),
          child: Image.asset('assets/rocoto relleno.jpg'),
         ),
        
         Container(
          color: Colors.yellowAccent,
          padding: const EdgeInsets.all(40),
          child: Image.asset('assets/arroz con pollo.jpg'),
         ),

          Container(
          color: Colors.yellowAccent,
          padding: const EdgeInsets.all(40),
          child: Image.asset('assets/papa a la huancaina.jpg'),
         ),

          Container(
          color: Colors.yellowAccent,
          padding: const EdgeInsets.all(40),
          child: Image.asset('assets/papa rellena.jpg'),
         ),
          
        
                   ],
        ),
      ),
    );
  }
}