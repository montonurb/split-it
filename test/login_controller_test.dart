import 'package:flutter_test/flutter_test.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login.service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';

class LoginServiceMock implements LoginService {
  @override
  Future<UserModel> googleSignIn() async {
    return UserModel(email: "brunomoncar007@gmail.com", id: "id");
  }
}

void main() {
  late LoginController controller;
  setUp(() {
    controller = LoginController(service: LoginServiceMock(), onUpdate: () {});
  });

  test("Testando Google SignIn (Success)", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });
}
