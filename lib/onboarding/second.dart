import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../authentication/login.dart';
import '../Animation/FadeAnimation.dart';

void main() {
  runApp(MyAppTwo());
}

class MyAppTwo extends StatelessWidget {
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
  String animationName1 = 'Animations';
  Widget __loginCode() {
    return SafeArea(
      child: FadeAnimation(
          1.5,
          Container(
              child: Container(
            margin: EdgeInsets.only(top: 55),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(40.0),
                  topRight: const Radius.circular(40.0),
                )),
            height: MediaQuery.of(context).size.height * 1,
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  padding: EdgeInsets.only(right: 30, left: 30),
                  child: FlareActor(
                    "assets/Check (Lottie Import).flr",
                    alignment: Alignment.center,
                    animation: animationName1,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: RotationTransition(
                      turns: AlwaysStoppedAnimation(-5 / 360),
                      child: Text(
                        'Your order has',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                Container(
                  child: RotationTransition(
                      turns: AlwaysStoppedAnimation(-5 / 360),
                      child: Text(
                        'been placed',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                RotationTransition(
                  turns: AlwaysStoppedAnimation(10 / 360),
                  child: Container(
                      width: 115,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(20.0),
                            topRight: const Radius.circular(20.0),
                            bottomLeft: const Radius.circular(20.0),
                            bottomRight: const Radius.circular(20.0),
                          )),
                      alignment: Alignment.center,
                      child: Text(
                        '#518129221',
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 120, right: 120),
                  child: RotationTransition(
                      turns: AlwaysStoppedAnimation(-5 / 360),
                      child: Text(
                        'Track the order details in the app',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                RotationTransition(
                    turns: new AlwaysStoppedAnimation(-8 / 360),
                    child: ButtonTheme(
                        minWidth: 140,
                        height: 55,
                        child: RaisedButton(
                          elevation: 0,
                          color: Colors.black,
                          child: Text("Ok",
                              style: GoogleFonts.roboto(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyappThree()),
                            );
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ))),
              ],
            ),
          ))),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: __loginCode(),
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.black);
  }
}
