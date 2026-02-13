import 'package:flutter/material.dart';

void main() => runApp(const AppHeladeria());

class AppHeladeria extends StatelessWidget {
  const AppHeladeria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dairy Queen Omar',
      home: const HeladoFilaColumna(),
    );
  }
} // fin clase AppHeladeria

class HeladoFilaColumna extends StatelessWidget {
  const HeladoFilaColumna({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F0F0), // Fondo gris suave
      appBar: AppBar(
        title: const Text(
          "Dairy Queen Omar",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF003580), // Azul marino DQ
        actions: const [
          Icon(Icons.icecream, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.cake, color: Colors.white),
          SizedBox(width: 15),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Fila 1: Blizzard y Cono
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _crearCaja("Blizzard", Colors.orange[800]!, Icons.autorenew),
                  _crearCaja("Cono", const Color(0xFFFBC02D), Icons.icecream),
                ],
              ),

              // Fila 2: Banana Split y Dilly Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _crearCaja("Split", Colors.pink[700]!, Icons.restaurant),
                  _crearCaja("Dilly Bar", Colors.green[700]!, Icons.circle),
                ],
              ),

              // Fila 3: Moolatte y DQ Cake
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _crearCaja("Moolatte", Colors.blue[700]!, Icons.local_cafe),
                  _crearCaja("DQ Cake", Colors.red[800]!, Icons.cake),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- Widget Personalizado: Ancho 180 y bordes redondeados ---
  Widget _crearCaja(String texto, Color color, IconData icono) {
    return Container(
      width: 180, // Contenedores más anchos solicitado
      height: 140,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icono,
              size: 50,
              color: Colors.white,
            ),
            const SizedBox(height: 8),
            Text(
              texto,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
} // fin clase HeladoFilaColumna