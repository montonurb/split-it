import 'package:flutter/material.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/login_controller.dart';
import 'package:split_it/modules/login/widgets/social_button.dart';
import 'package:split_it/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late LoginController controller;

  @override
  void initState() {
    controller = LoginController(onUpdate: () {
      if (controller.state is LoginStateSuccess) {
        final user = (controller.state as LoginStateSuccess).user;
        Navigator.pushReplacementNamed(context, "/home", arguments: user);
      } else {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.backgroundPrimary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 80.0),
            child: Row(
              children: [
                Container(
                  width: 236,
                  child: Text(
                    "Divida suas contas com seus amigos",
                    style: AppTheme.textStyles.title,
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40, right: 40),
                child: ListTile(
                  leading: Image.asset("assets/images/emoji.png"),
                  title: Text(
                    "Faça seu login com uma das contas abaixo",
                    style: AppTheme.textStyles.button,
                  ),
                ),
              ),
              SizedBox(height: 32),
              if (controller.state is LoginStateLoading) ...[
                CircularProgressIndicator(),
              ] else if (controller.state is LoginStateFailure)
                ...[]
              else
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0),
                  child: SocialButtonWidget(
                    imagePath: "assets/images/google.png",
                    label: "Entrar com Google",
                    onTap: () {
                      controller.googleSignIn();
                    },
                  ),
                ),
              SizedBox(height: 12.0),
              // ignore: todo
              //TODO: CONFIGURAR APPLE
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32.0),
                child: SocialButtonWidget(
                  imagePath: "assets/images/apple.png",
                  label: "Entrar com Apple",
                  onTap: () {
                    controller.appleSignIn();
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
