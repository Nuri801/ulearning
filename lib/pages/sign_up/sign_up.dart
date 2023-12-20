import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ulearning/pages/welcome/widgets.dart';
import '../sign_in/widgets.dart';

class SignUp extends StatelessWidget {

  SignUp({super.key});
  final TextEditingController userNameController = TextEditingController();
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
                        "User Name",
                        userNameController,
                        Icons.perm_identity,
                        "Enter your email",
                        false,
                      ),
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
                      textField(
                        "Confirm Password",
                        pwController,
                        Icons.key,
                        "Confirm your password",
                        true,
                      ),
                      explanationText("By creating an account you are agreeing to our terms & conditions."),
                      // const Expanded(flex: 3, child: SizedBox()),
                      const SizedBox(height: 60,),
                      button(
                        label: "Sign Up",
                        labelColor: Colors.white,
                        onButtonPressed: () {
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
