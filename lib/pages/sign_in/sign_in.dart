import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/pages/sign_in/widgets.dart';
import '../../common/widgets/appbar.dart';
import '../../common/widgets/text_field.dart';
import '../sign_up/notifier/register_notifier.dart';

class SignIn extends ConsumerWidget {
  SignIn({super.key});
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final regProvider = ref.watch(registerNotifierProvider);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        color: Colors.white,
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          // appBar: buildAppBar("Log In"),
          appBar: buildAppBar(ref.watch(registerNotifierProvider.notifier).getUserName()),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 40,
              left: 30,
              right: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(ref.watch(registerNotifierProvider.notifier).getUserName(), style: TextStyle(fontSize: 20, color: Colors.red),),
                thirdPartyLogin(),
                explanationText("Or use your email and pw to login"),
                const Expanded(flex: 1, child: SizedBox()),
                textField(
                  title: "Email",
                  controller: idController,
                  prefixIcon: Icons.email_outlined,
                  hintText: "Enter your email",
                  isPassWord: false,
                  func: (value) {},
                ),
                textField(
                  title: "Password",
                  controller: pwController,
                  prefixIcon: Icons.key,
                  hintText: "Enter your password",
                  isPassWord: true,
                  func: (value) {},
                ),
                forgotPassWord(),
                const Expanded(flex: 3, child: SizedBox()),
                // button(
                //   label: "Log In",
                //   onButtonPressed: () {
                //     Navigator.pushNamed(context, "signUp");
                //   },
                // ),
                button(
                  label: "Sign Up",
                  labelColor: Colors.black,
                  foreGroundColor: Colors.white,
                  onButtonPressed: () {
                    Navigator.pushNamed(context, "signUp");
                  },
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
