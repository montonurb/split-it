import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Divida suas contas com seus amigos",
                style: TextStyle(
                    color: AppTheme.colors.font,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                children: [
                  Text(
                    "Faça seu login com uma das contas abaixo",
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
