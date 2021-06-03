import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:split_it/modules/login/login.service.dart';
import 'package:split_it/modules/login/login_state.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  final LoginService service;
  LoginController({required this.onUpdate, required this.service});

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      onUpdate();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
      //state = LoginStateFailure(message: "error.toString()");
      onUpdate();
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      onUpdate();
    }
  }

  Future<void> appleSignIn() async {
    //Aviso na tela sobre indisponibilidade de login com o apple.
    Fluttertoast.showToast(
      msg: "Login com Apple indisponível!",
    );
    /* try {
                      final credential =
                          await SignInWithApple.getAppleIDCredential(
                        scopes: [
                          AppleIDAuthorizationScopes.email,
                          AppleIDAuthorizationScopes.fullName,
                        ],
                      );
                      print(credential);
                    } catch (e) {
                      print(e);
                    } */
  }
}
