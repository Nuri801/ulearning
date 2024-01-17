import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ulearning/pages/sign_up/notifier/register_notifier.dart';
import '../../common/widgets/appbar.dart';
import '../../common/widgets/text_field.dart';
import '../sign_in/widgets.dart';

class SignUp extends ConsumerWidget {

  SignUp({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();
  final TextEditingController confirmPwController = TextEditingController();
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
          // resizeToAvoidBottomInset: false,
          appBar: buildAppBar("Sign Up"),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 30,
                left: 30,
                right: 30,
              ),
              child: Container(
                // color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    explanationText("Enter your details below to sign up"),
                    // const Expanded(flex: 1, child: SizedBox()),
                    textField(
                      title: "User Name",
                      controller: userNameController,
                      prefixIcon: Icons.perm_identity,
                      hintText: "Enter user name",
                      isPassWord: false,
                      func: (value) => ref.read(registerNotifierProvider.notifier).onUserNameChange(value),
                    ),
                    textField(
                      title: "Email",
                      controller: idController,
                      prefixIcon: Icons.email_outlined,
                      hintText: "Enter your email",
                      isPassWord: false,
                      func: (value) => ref.read(registerNotifierProvider.notifier).onEmailChange(value),
                    ),
                    textField(
                      title: "Password",
                      controller: pwController,
                      prefixIcon: Icons.key,
                      hintText: "Enter your password",
                      isPassWord: true,
                      func: (value) => ref.read(registerNotifierProvider.notifier).onPasswordChange(value),
                    ),
                    textField(
                      title: "Confirm Password",
                      controller: confirmPwController,
                      prefixIcon: Icons.key,
                      hintText: "Confirm your password",
                      isPassWord: true,
                    ),
                    explanationText("By creating an account you are agreeing to our terms & conditions."),
                    // const Expanded(flex: 3, child: SizedBox()),
                    const SizedBox(
                      height: 60,
                    ),
                    button(
                      label: "Sign Up",
                      labelColor: Colors.white,
                      onButtonPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
