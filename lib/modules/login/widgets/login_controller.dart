import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';

class LoginController {
  UserModel? user;
  Future<void> googleSignIn() async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    try {
      final account = await _googleSignIn.signIn();
      user = UserModel.google(account!);
      print("Nome: ${user!.name}");
    } catch (error) {
      print(error);
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
