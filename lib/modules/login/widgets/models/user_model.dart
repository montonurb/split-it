import 'package:google_sign_in/google_sign_in.dart';

class UserModel {
  final String email;
  final String? name;
  final String id;
  final String? photoUrl;

  UserModel({required this.email, this.name, required this.id, this.photoUrl});

  factory UserModel.google(GoogleSignInAccount account) {
    return UserModel(
      name: account.displayName,
      email: account.email,
      id: account.id,
      photoUrl: account.photoUrl,
    );
  }
}
