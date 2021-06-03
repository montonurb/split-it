import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:split_it/modules/login/login.service.dart';
import 'package:split_it/modules/login/login_state.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;
  Function(LoginState state)? onChange;
  final LoginService service;
  LoginController({required this.onUpdate, required this.service});

  Future<void> googleSignIn() async {
    try {
      state = LoginStateLoading();
      update();
      final user = await service.googleSignIn();
      state = LoginStateSuccess(user: user);
      //state = LoginStateFailure(message: "error.toString()");
      update();
    } catch (error) {
      state = LoginStateFailure(message: error.toString());
      update();
    }
  }

  void listen(Function(LoginState state) onChange) {
    this.onChange = onChange;
  }

  void update() {
    onUpdate();
    if (onChange != null) {
      onChange!(state);
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
