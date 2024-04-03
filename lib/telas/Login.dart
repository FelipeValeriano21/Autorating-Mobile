  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';

  class Login extends StatefulWidget {
    const Login({Key? key}) : super(key: key);

    @override
    _ExercicioState createState() => _ExercicioState();
  }

  class _ExercicioState extends State<Login> {
    bool _obscureText = true;

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
            Image.asset(
              "assets/logo.png",
              height: 180,
            ),
            Container(
              width: 400,
              height: 0.5,
              color: Colors.grey,
            ),
            const SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _buildInputWithIconAndPlaceholder(
                    icon: Icons.email,
                    placeholder: 'Cadastro de Pessoa Física',
                  ),
                  const SizedBox(height: 10.0), // Adicionando espaço entre os campos de texto
                  _buildInputWithIconAndPlaceholder(
                    icon: Icons.lock,
                    placeholder: 'Senha',
                    obscureText: _obscureText,
                    suffixIcon: IconButton(
                      icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Row( // Adicionando a opção "Lembrar senha"
                    children: [
                       Text(
                        'Lembrar senha',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Checkbox(
                        value: true, // Defina o valor para verdadeiro se desejar que esteja marcado por padrão
                        onChanged: (bool? value) {
                          // Lógica para lembrar ou não a senha
                        },
                      ),
                     
                    ],
                  ),
                  const SizedBox(height: 40.0),
              GestureDetector( // Adicionando o texto "Esqueci a senha"
                    onTap: () {
                      // Lógica para redirecionar para a página de recuperação de senha
                    },
                    child: Text(
                      'Esqueci minha senha',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 66, 120),
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                  ),
                  const SizedBox(height:35.0),
                  ElevatedButton(
                    onPressed: () {
                      
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 0, 98, 147)), // cor de fundo do botão
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0), // Aumentando o raio da borda
                        ),
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 80.0), // Aumentando o padding interno
                      ),
                    ),
                    child: Text('Iniciar Sessão', style: TextStyle(fontSize: 18, color: Colors.white)),
                  ),
                  const SizedBox(height: 40.0),
                  GestureDetector( // Adicionando o texto "Esqueci a senha"
                    onTap: () {
                      // Lógica para redirecionar para a página de recuperação de senha
                    },
                    child: Text(
                      'Quem nós somos?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 119, 119, 119),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget _buildInputWithIconAndPlaceholder({
      required IconData icon,
      required String placeholder,
      bool obscureText = false,
      Widget? suffixIcon,
    }) {
      return Container(
        width: 400,
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Colors.grey[200],
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 64, 127, 179),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: TextField(
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: placeholder,
                  border: InputBorder.none,
                  suffixIcon: suffixIcon,
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
