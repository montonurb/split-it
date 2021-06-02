import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';

class LoginController {
  LoginState state = LoginStateEmpty();
  VoidCallback onUpdate;

  LoginController({required this.onUpdate});

  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      state = LoginStateLoading();
      onUpdate();
      final account = await _googleSignIn.signIn();
      state = LoginStateSuccess(user: UserModel.google(account!));
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
