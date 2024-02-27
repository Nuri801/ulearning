import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/pages/sign_up/notifier/register_notifier.dart';
import 'package:ulearning/pages/sign_up/notifier/register_state.dart';

final isLoading = StateProvider<bool>((ref) {
  return false;
});

class SignUpController {
  final WidgetRef ref;
  SignUpController({required this.ref});

  void handleSignUp() async {
    ref.read(isLoading.notifier).state = true;

    await Future.delayed(const Duration(milliseconds: 2000));
    var state = ref.read(registerNotifierProvider);
    //ref.read(appCount.notifier).state++;
    String name = state.userName;
    String email = state.email;
    print(("your name is: $name and your email is: $email"));

    ref.read(registerNotifierProvider.notifier).onRePasswordChange("0000");

    ref.read(isLoading.notifier).state = false;
  }
}
