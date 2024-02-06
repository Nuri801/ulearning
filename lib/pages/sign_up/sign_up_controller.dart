import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/pages/sign_up/notifier/register_notifier.dart';

class SignUpController {
   final WidgetRef ref;

   SignUpController({required this.ref});

   void handleSignUp() {
      var state = ref.read(registerNotifierProvider);
      String name = state.userName;
      String email = state.email;
      print(("your name is: ${name}"));

   }

}