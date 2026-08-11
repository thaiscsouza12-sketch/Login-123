import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: login()), //MaterialApp
  );
}

//Criando a tela de login
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF002060),

      // título do APP
      appBar: AppBar(
        title: Text('Tela de Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF002060),
      ),

      // Conteúdo da página
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // Título da tela do APP
            Text('Acesso ao sistema', style: TextStyle(fontSize: 24)),

            SizedBox(height: 24),

            // Campo para o e-mail
            TextField(decoration: InputDecoration(labelText: 'E-mail')),

            SizedBox(height: 24),

            // Campo para digitar a senha
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: "senha"),
            ),

            SizedBox(height: 24),

            // Botão Entrar
            ElevatedButton(
              onPressed: () {
                print('Botão pressionado');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFFF2800),
                foregroundColor: Colors.white,
              ),
              child: Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}
