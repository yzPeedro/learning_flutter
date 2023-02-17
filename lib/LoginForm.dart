// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return FormState();
  }
}

class FormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 100),
            child: const Align(
              child: Text(
                "LOGIN",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          SizedBox(
            width: 340,
            child: TextFormField(
              decoration: const InputDecoration(
                labelText: 'Usuário',
              ),
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 34),
            child: SizedBox(
              width: 340,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha',
                ),
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {},
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  "ENTRAR",
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
