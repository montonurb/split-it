import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:split_it/modules/login/login_controller.dart';
import 'package:split_it/modules/login/login.service.dart';
import 'package:split_it/modules/login/login_state.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';

class LoginServiceMock extends Mock implements LoginService {}

void main() {
  late LoginController controller;
  late LoginService service;
  setUp(() {
    service = LoginServiceMock();
    controller = LoginController(service: service, onUpdate: () {});
  });

  test("Testando Google SignIn (Success)", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    when(service.googleSignIn)
        .thenAnswer((_) async => UserModel(email: "email", id: "id"));
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateSuccess>());
    expect(states.length, 2);
  });

  test("Testando Google SignIn (Failure)", () async {
    expect(controller.state, isInstanceOf<LoginStateEmpty>());
    final states = <LoginState>[];
    controller.listen((state) => states.add(state));
    when(service.googleSignIn).thenThrow("Deu erro!");
    await controller.googleSignIn();
    expect(states[0], isInstanceOf<LoginStateLoading>());
    expect(states[1], isInstanceOf<LoginStateFailure>());
    expect(states.length, 2);
  });

  test("Testando o método listen()", () {
    controller.state = LoginStateLoading();
    controller
        .listen((state) => expect(state, isInstanceOf<LoginStateLoading>()));
    controller.update();
  });

  test('Testando o método update()', () {
    controller.state = LoginStateLoading();
    controller
        .listen((state) => expect(state, isInstanceOf<LoginStateLoading>()));
    controller.update();
  });
}
