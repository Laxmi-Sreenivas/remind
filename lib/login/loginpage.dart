import 'package:flutter/material.dart';
import 'package:remind/login/infotext.dart';
import 'package:remind/login/inputfield.dart';
import 'package:remind/login/options.dart';
import 'package:remind/login/signuppage.dart';
import 'package:remind/login/submit.dart';
import 'package:remind/login/swappage.dart';
import 'package:remind/login/toplogo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void login() {
      print(username.text);
      print(password.text);

      // Navigator.push(
      //   context,
      //   MaterialPageRoute(builder: (context) => Placeholder()),
      // );
    }

    return Scaffold(
      appBar: null,
      body: ListView(
        children: <Widget>[
          TopLogo(),
          InfoText(
            bigText: 'Login Now',
            smallText: 'Please login to continue using our app',
          ),
          InputField(
              controllers: [username, password],
              hintTexts: const ['Username', 'Password']),
          Submit(
            submitText: 'Login',
            submitAction: login,
          ),
          SwapPage(
            infoText: 'Don\'t have an account ? ',
            tapText: 'Sign Up',
            page: SignUpPage(),
          ),
          Options(),
        ],
      ),
    );
  }
}