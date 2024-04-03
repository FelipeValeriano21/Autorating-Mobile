import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 25,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
        title: const Text(
          "© Téchnotribe MLV ",
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 0, 98, 147),
      ),
      body: Center(
        child: SizedBox(
          height: 250, // Define a altura do container
          child: Align(
            alignment: Alignment.center, // Centraliza horizontalmente
            child: Container(
              width: 250, // Define a largura do container
              height: 250, // Define a altura do container
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5), // Define a cor da sombra azul
                    spreadRadius: 10,
                    blurRadius: 15,
                  ),
                ],
              ),
              child: ClipOval(
                child: Image.asset(
                  "assets/Landing.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: LandingPage(),
  ));
}
