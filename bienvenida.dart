import "package:flutter/material.dart";

class Bienvenida extends StatelessWidget {
  final bool usuarioValido;
  final String username;

  Bienvenida({required this.usuarioValido, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenida'),
        backgroundColor: Color.fromARGB(255, 157, 155, 172), // Cambia el color de fondo de la barra de navegación
      ),
      body: Container(
        color: Color.fromARGB(255, 136, 94, 221), // Cambia el color de fondo de la pantalla
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                usuarioValido ? Icons.check_circle : Icons.cancel,
                color: usuarioValido ? Colors.green : Colors.yellow,
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                usuarioValido
                    ? '¡Bienvenido, $username!'
                    : 'Usuario no válido. Inténtalo de nuevo.',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
