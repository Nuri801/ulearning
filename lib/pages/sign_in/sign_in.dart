import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/pages/sign_in/widgets.dart';

import '../../common/widgets/text_widgets.dart';

class SignIn extends StatelessWidget {
  SignIn({super.key});
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: buildAppBar("Log In"),
            backgroundColor: Colors.white,
            body: Padding(
              padding: const EdgeInsets.only(
                top: 10,
                bottom: 30,
                left: 30,
                right: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  thirdPartyLogin(),
                  explanationText("Or use your email and pw to login"),
                  const Expanded(flex: 1, child: SizedBox()),
                  textField(
                    "Email",
                    idController,
                    Icons.email_outlined,
                    "Enter your email",
                    false,
                  ),
                  textField(
                    "Password",
                    pwController,
                    Icons.key,
                    "Enter your password",
                    true,
                  ),
                  forgotPassWord(),
                  const Expanded(flex: 3, child: SizedBox()),
                  button(
                    label: "Log In",
                    onButtonPressed: () {Navigator.pushNamed(context, "signUp");},
                  ),
                  button(
                    label: "Sign Up",
                    labelColor: Colors.black,
                    foreGroundColor: Colors.white,
                    onButtonPressed: () {Navigator.pushNamed(context, "signUp");},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
