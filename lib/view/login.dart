import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String login = "";
  String senha = "";

  void efetuar_login() {
    if (senha == "123123") {
      Navigator.pushNamed(context, "list");
    } else {
      print("dados invalidos login $login senha $senha");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Container(
                child: Image.asset('logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0, bottom: 8.0),
                child: TextField(
                    onChanged: (value) {
                      setState(() {
                        login = value;
                      });
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'digite seu login',
                        border: OutlineInputBorder())),
              ),
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
                    efetuar_login();
                  },
                  child: Text("LOGIN"))
            ],
          ),
        ),
      ),
    );
  }
}
