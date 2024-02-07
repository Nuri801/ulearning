import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ulearning/pages/sign_up/notifier/register_state.dart';
part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {

  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNameChange(String name) {
    state = state.copyWith(userName: name);
  }

  void onEmailChange(String email) {
    state = state.copyWith(email: email);
  }

  void onPasswordChange(String pw) {
    state = state.copyWith(password: pw);
  }

  void onRePasswordChange(String repw) {
    state = state.copyWith(rePassword: repw);
  }

}
