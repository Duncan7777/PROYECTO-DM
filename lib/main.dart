import 'package:flutter/material.dart';
import 'catalog.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Comidas del Perú',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const IntroductionPage(),
    );
  }
}

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historia de la Comida Peruana'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://st3.depositphotos.com/1000854/18314/v/600/depositphotos_183144400-stock-illustration-set-of-hand-drawn-symbols.jpg', // URL de la imagen de fondo
            ),
            fit: BoxFit.cover, 
            opacity: 0.5,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_Peru_%281884%E2%80%931950%29.svg/800px-Flag_of_Peru_%281884%E2%80%931950%29.svg.png', 
                fit: BoxFit.cover,
                height: 150,
                width: 150,
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                color: Colors.white.withOpacity(0.8),
                child: const Text(
                  'La gastronomía peruana es una de las más diversas del mundo. Cuenta con influencia pre-incaica, incaica, española, africana, francesa, chino-cantonesa, japonesa e italiana. En consecuencia, cuenta con una influencia cultural de casi todos los continentes, faltando únicamente Oceanía. No obstante, el concepto de comida criolla nació a partir de la fusión de la comida de origen español con la comida de los incas. Posteriormente, se fueron sumando nuevos platillos con la llegada de nuevas culturas, logrando consolidarse hasta nuestros tiempos.',
                  style: TextStyle(
                    color: Colors.black, fontSize: 20
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CatalogPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                ),
                child: const Text('Ir al catálogo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

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
