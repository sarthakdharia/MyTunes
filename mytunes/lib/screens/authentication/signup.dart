import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mytunes/controller/authcontroller.dart';
import 'package:mytunes/screens/authentication/login.dart';

//Widget for input

class SignUpWidget extends StatefulWidget {
  @override
  SignUpState createState() {
    return SignUpState();
  }
}

class SignUpState extends State<SignUpWidget> {
  final FocusNode focusEmail = FocusNode();
  final FocusNode focusPassword = FocusNode();
  final FocusNode focusName = FocusNode();
  final FocusNode focusConfirmPassword = FocusNode();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    var emailcontroller = TextEditingController();
    var passwordcontroller = TextEditingController();

    // var email, password;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.only(top: 30.0),
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
                child: Container(
                  width: 360.00,
                  height: 480.00,
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
                            hintText: "User Name",
                            focusColor: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.man,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          cursorColor: Theme.of(context).secondaryHeaderColor,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          controller: emailcontroller,
                          decoration: InputDecoration(
                            hintText: "Email",
                            focusColor: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.email,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                          cursorColor: Theme.of(context).secondaryHeaderColor,
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          controller: passwordcontroller,
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
                      const SizedBox(
                        height: 20,
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
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20.0),
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
                              "Sign Up",
                              style: TextStyle(
                                  fontFamily: "SignikaSemiBold",
                                  color: Colors.white,
                                  fontSize: 22.0),
                            ),
                          ),
                          onPressed: () {
                            AuthController.instance.register(
                                emailcontroller.text.trim(),
                                passwordcontroller.text.trim());
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
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.white10,
                          Colors.white,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Text(
                    "OR",
                    style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 16.0,
                        fontFamily: "WorkSansMedium"),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Colors.white,
                          Colors.white10,
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  width: 100.0,
                  height: 1.0,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: FlatButton(
              child: Text(
                "Already Have An account ? ",
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
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 42.0),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontFamily: "SignikaSemiBold",
                      color: Colors.black,
                      fontSize: 22.0),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginWidget()));
              },
            ),
          ),
        ],
      ),
    ));
  }
}
