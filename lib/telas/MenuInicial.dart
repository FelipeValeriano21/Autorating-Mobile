import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 20.0),
          Container(
            padding: const EdgeInsets.all(10),
            color: Color.fromARGB(255, 255, 255, 255),
            child: Row(
              children: [
                SizedBox(width: 10), // Adiciona espaço à esquerda
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FELIPE V DOS REIS ',
                        style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Front-End Mobile',
                        style: TextStyle(color: Colors.black, fontSize: 14),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    // Lógica para notificações
                  },
                  icon: Icon(Icons.notifications, color: const Color.fromARGB(255, 0, 66, 120)),
                  splashRadius: 20, // Tamanho do ícone ao ser pressionado
                  padding: EdgeInsets.zero, // Remove o preenchimento do ícone
                  constraints: BoxConstraints(), // Remove as restrições de tamanho do ícone
                  iconSize: 30, // Tamanho do ícone
                  visualDensity: VisualDensity.compact, // Ajusta a densidade visual do ícone
                  splashColor: const Color.fromARGB(0, 255, 0, 0), // Remove a cor do splash ao ser pressionado
                  highlightColor: Colors.transparent, // Remove a cor de destaque ao ser pressionado
                  hoverColor: const Color.fromARGB(0, 228, 22, 22), // Remove a cor ao passar o mouse sobre o ícone
                  focusColor: Colors.transparent, // Remove a cor de foco do ícone
                ),
                SizedBox(width: 10), // Adiciona espaço entre o sino e a foto
                CircleAvatar(
                  radius: 20, // Define o tamanho do círculo
                  backgroundColor: Color.fromARGB(255, 159, 159, 159),
                  backgroundImage: AssetImage('assets/Perfil.jpg'), 
                ),
                SizedBox(width: 10), // Adiciona espaço à direita
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Recomendações da IA para você:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Card(
                    child: ListTile(
                      title: Text(
                        'Lógica de programação',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text('Udemy'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Lógica para o botão
                        },
                        child: Text(
                          'Conhecer Mais',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 64, 127, 179),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Altere o valor conforme necessário
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      title: Text(
                        'Flutter para iniciantes',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text('Alura'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Lógica para o botão
                        },
                        child: Text(
                          'Conhecer Mais',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 64, 127, 179),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Altere o valor conforme necessário
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Card(
                    child: ListTile(
                      title: Text(
                        'Flutter para iniciantes',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      subtitle: Text('Alura'),
                      trailing: ElevatedButton(
                        onPressed: () {
                          // Lógica para o botão
                        },
                        child: Text(
                          'Conhecer Mais',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 64, 127, 179),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10), // Altere o valor conforme necessário
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Define o tipo de layout como fixo
        backgroundColor: Color.fromARGB(255, 50, 98, 138), // Define a cor de fundo como azul
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: 'Requisitar',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Config',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.door_back_door),
            label: 'Sair',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        onTap: _onItemTapped,
      ),
    );
  }
}
