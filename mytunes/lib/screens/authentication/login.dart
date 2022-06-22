import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mytunes/custom_theme.dart';
import 'package:mytunes/screens/authentication/signup.dart';

//Widget for input

class LoginWidget extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }
}

class LoginState extends State<LoginWidget> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final GlobalKey<ScaffoldState> _mainScaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _mainScaffoldKey,
        body: Container(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(
            children: <Widget>[
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.topCenter,
                children: <Widget>[
                  Card(
                    elevation: 2.0,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    child: SizedBox(
                      width: 360.00,
                      height: 400.00,
                      child: Column(
                        children: <Widget>[
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Welcome to MyTunes',
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: "Email",
                                focusColor: Theme.of(context).primaryColor,
                                icon: Icon(
                                  Icons.email,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              cursorColor:
                                  Theme.of(context).secondaryHeaderColor,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  icon: Icon(
                                    Icons.password,
                                    color: Theme.of(context).primaryColor,
                                  )),
                              cursorColor: Theme.of(context).primaryColor,
                              style: const TextStyle(
                                color: Color(0xFF78D6FF),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30.0, bottom: 26.0),
                            // color: Theme.of(context).primaryColor,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                gradient: LinearGradient(
                                    colors: [
                                      Theme.of(context).primaryColor,
                                      Theme.of(context).secondaryHeaderColor,
                                    ],
                                    begin: const FractionalOffset(0.2, 0.2),
                                    end: const FractionalOffset(1.0, 1.0),
                                    stops: [0.1, 1.0],
                                    tileMode: TileMode.clamp)),
                            child: MaterialButton(
                              highlightColor: Colors.transparent,
                              splashColor: Colors.black,
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.0, horizontal: 42.0),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      fontFamily: "SignikaSemiBold",
                                      color: Colors.white,
                                      fontSize: 22.0),
                                ),
                              ),
                              onPressed: () => displaySnackBar("Login clicked"),
                            ),
                          ),
                          Container(
                            child: FlatButton(
                              color: Colors.white,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Theme.of(context).primaryColor,
                                    fontSize: 18.0,
                                    fontFamily: "SignikaRegular"),
                              ),
                              onPressed: () {
                                displaySnackBar("Forgot clicked");
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: FlatButton(
                  child: const Text(
                    "Not have account?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: "SignikaRegular"),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.white],
                        begin: FractionalOffset(0.2, 0.2),
                        end: FractionalOffset(0.5, 0.5),
                        stops: [0.1, 0.5],
                        tileMode: TileMode.clamp)),
                child: MaterialButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.white70,
                  child: const Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          fontFamily: "SignikaSemiBold",
                          color: Colors.black,
                          fontSize: 22.0),
                    ),
                  ),
                  onPressed: () {
                    Get.to(SignUpWidget());
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[],
                ),
              ),
            ],
          ),
        ));
  }

  void displaySnackBar(String value) {
    _mainScaffoldKey.currentState!.showSnackBar(SnackBar(
      content: Text(
        value,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Colors.white, fontSize: 16.0, fontFamily: "SignikaRegular"),
      ),
      backgroundColor: Colors.blue,
      duration: const Duration(seconds: 3),
    ));
  }
}
