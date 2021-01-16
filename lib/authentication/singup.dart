import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Animation/FadeAnimation.dart';
import '../Carpage/home.dart';
import './login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyappFour());
}

DatabaseReference usersRef =
    FirebaseDatabase.instance.reference().child('Users');

class MyappFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BodyLogin(),
    );
  }
}

class BodyLogin extends StatefulWidget {
  @override
  _BodyLoginState createState() => _BodyLoginState();
}

class _BodyLoginState extends State<BodyLogin> {
  TextEditingController name_textEditingController = TextEditingController();
  TextEditingController email_textEditingController = TextEditingController();
  TextEditingController password_textEditingController =
      TextEditingController();
  TextEditingController confimPass_textEditingController =
      TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  void registerNewUser(BuildContext context) async {
    final User firebaseUser = (await _firebaseAuth
            .createUserWithEmailAndPassword(
                email: email_textEditingController.text,
                password: password_textEditingController.text)
            .catchError((errMassg) {
      Fluttertoast.showToast(msg: "Error:${errMassg.toString()}");
    }))
        .user;
    if (firebaseUser != null) {
      usersRef.child(firebaseUser.uid);
      Map userDataMap = {
        "name": name_textEditingController.text.trim(),
        "email": email_textEditingController.text.trim(),
        "password": password_textEditingController.text.trim(),
        "confirm_password": confimPass_textEditingController.text,
      };
      usersRef.child(firebaseUser.uid).set(userDataMap);
      Fluttertoast.showToast(msg: ' successful');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyappSix()),
      );
    } else {
      Fluttertoast.showToast(msg: 'New user account has not been Created');
    }
  }

  Widget __loginCode() {
    return SafeArea(
      child: SingleChildScrollView(
          child: FadeAnimation(
              1.5,
              Column(children: <Widget>[
                Row(
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyappThree()),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        )),
                    SizedBox(
                      width: 50,
                    ),
                    Container(
                        padding: EdgeInsets.all(20),
                        child: Text('Sign Up',
                            style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 30)))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(60.0),
                      )),
                  height: MediaQuery.of(context).size.height * 1,
                  child: Stack(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(top: 50, right: 40, left: 40),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 10),
                                child: Text(
                                  'Full name',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 12, top: 10),
                                  padding: EdgeInsets.only(top: 12),
                                  child: TextField(
                                    controller: name_textEditingController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Hirwa Aldo'),
                                  ))
                            ],
                          )),
                      Container(
                          margin:
                              EdgeInsets.only(top: 140, right: 40, left: 40),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 10),
                                child: Text(
                                  'Email',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 12, top: 10),
                                  padding: EdgeInsets.only(top: 12),
                                  child: TextField(
                                    controller: email_textEditingController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'hirwaaldo1@gmail.com'),
                                  ))
                            ],
                          )),
                      Container(
                          margin:
                              EdgeInsets.only(top: 230, right: 40, left: 40),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 10),
                                child: Text(
                                  'Password',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 12, top: 10),
                                  padding: EdgeInsets.only(top: 12),
                                  child: TextField(
                                    controller: password_textEditingController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '***************'),
                                  ))
                            ],
                          )),
                      Container(
                          margin:
                              EdgeInsets.only(top: 320, right: 40, left: 40),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(left: 12, top: 10),
                                child: Text(
                                  'Confirm password',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15),
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.only(left: 12, top: 10),
                                  padding: EdgeInsets.only(top: 12),
                                  child: TextField(
                                    controller:
                                        confimPass_textEditingController,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: '***************'),
                                  ))
                            ],
                          )),
                      Container(
                          margin:
                              EdgeInsets.only(top: 420, right: 40, left: 40),
                          child: ButtonTheme(
                              minWidth: 340,
                              height: 55,
                              child: RaisedButton(
                                elevation: 0,
                                color: Colors.black,
                                child: Text("Sign Up",
                                    style: GoogleFonts.roboto(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15)),
                                onPressed: () {
                                  if (name_textEditingController.text.length <
                                      4) {
                                    Fluttertoast.showToast(
                                        msg:
                                            'Name must be at least 4 characters.');
                                  } else if (password_textEditingController
                                          .text.length <
                                      8) {
                                    Fluttertoast.showToast(
                                        msg:
                                            'Password must be at least 8 characters.');
                                  }
                                  if (password_textEditingController.text !=
                                      confimPass_textEditingController.text) {
                                    Fluttertoast.showToast(
                                        msg: 'Password does not match.');
                                  } else if (!email_textEditingController.text
                                      .contains('@')) {
                                    Fluttertoast.showToast(
                                        msg: 'Email address is not Valid.');
                                  }
                                  registerNewUser(context);
                                },
                                shape: new RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(12.0),
                                  bottomLeft: const Radius.circular(12.0),
                                  bottomRight: const Radius.circular(12.0),
                                )),
                              ))),
                    ],
                  ),
                )
              ]))),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: __loginCode(),
        bottomNavigationBar: FadeAnimation(
            1.7,
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyappThree()),
                );
              },
              child: BottomAppBar(
                  elevation: 0,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, right: 70, left: 70),
                    child: Text("Already have any account? Sign In",
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  )),
            )),
        backgroundColor: Colors.black);
  }
}
