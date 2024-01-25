import 'package:flutter/material.dart';

class InscriptionPage extends StatelessWidget {
  const InscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inscription'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SignUpForm(),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: _emailController,
          decoration: InputDecoration(labelText: 'Adresse e-mail'),
        ),
        SizedBox(height: 16.0),
        TextField(
          controller: _passwordController,
          decoration: InputDecoration(labelText: 'Mot de passe'),
          obscureText: true,
        ),
        SizedBox(height: 32.0),
        ElevatedButton(
          onPressed: () {
            String email = _emailController.text;
            String password = _passwordController.text;
          },
          child: Text('S\'inscrire'),
        ),
      ],
    );
  }
}
