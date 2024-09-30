import 'package:flutter/material.dart';
import 'package:lylness/components/customTextFormField.dart';
import 'package:lylness/product/styles.dart';
import 'package:flutter/services.dart';
import 'package:lylness/product/tr_items.dart';

import '../components/forgot_password_text.dart';
import '../components/if_not_login_text.dart';
import '../components/login_button.dart';
import '../components/login_text.dart';
import '../components/subtitle_widget.dart';
import '../components/title_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = false;
    
  void changeVisible(){
    setState(() {
      isVisible = !isVisible;
    });
    //print(isVisible);
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              LoginRegisterStyle.topGradient,
              LoginRegisterStyle.bottomGradient,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            )
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.1, 
              horizontal: MediaQuery.of(context).size.width * 0.15),
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: titleWidget(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 60),
                    child: subtitleWidget()),
                  loginText(),
                  Form(child: ListView(
                    children: [Customtextformfield(
                    labelText: RegisterLoginTextsTr.userName, 
                    onSaved: (a){},
                    ),
                  Customtextformfield(
                    labelText: RegisterLoginTextsTr.password, 
                    onSaved: (a){},
                    isPassword: true,
                    initialVisible: false,
                    isDone: true,
                    ),],
                  )),
                  forgotPasswordText(),
                  loginButton(),
                  ifNotLoginText()
                ],
              ),
            ),
            ),
        ),
      ),
    );
  }
}
