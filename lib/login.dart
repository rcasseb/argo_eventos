import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String login = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            TextField(
                onChanged: (value) {
                  setState(() {
                    login = value;
                  });
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'digite seu login',
                    border: OutlineInputBorder())),
            TextField(
                onChanged: (value) {
                  setState(() {
                    senha = value;
                  });
                },
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'digite sua senha',
                    border: OutlineInputBorder())),
            TextButton(
                onPressed: () {
                  if (login == "argo@cesupa.br" && senha == "123123") {
                    Navigator.pushNamed(context, "lista");
                  } else {
                    print("dados invalidos login $login senha $senha");
                  }
                },
                child: Text("LOGIN"))
          ],
        ),
      ),
    );
  }
}
