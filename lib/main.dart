import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './onboarding/second.dart';
import './authentication/login.dart';
import './Animation/FadeAnimation.dart';

void main() {
  runApp(MyAppOne());
}

class MyAppOne extends StatelessWidget {
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
  String animationName = 'empty';
  Widget __loginCode() {
    return FadeAnimation(
        1.5,
        SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyappThree()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.all(12),
                      child: Text('Ship',
                          style: GoogleFonts.roboto(
                              color: Colors.white, fontSize: 16)),
                    )),
                Container(
                  height: 250,
                  padding: EdgeInsets.only(right: 30, left: 30),
                  child: FlareActor(
                    "assets/Empty.flr",
                    alignment: Alignment.center,
                    animation: animationName,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: RotationTransition(
                      turns: new AlwaysStoppedAnimation(7 / 360),
                      child: Text(
                        'Simple as it is',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 35,
                    right: 35,
                  ),
                  child: RotationTransition(
                      turns: new AlwaysStoppedAnimation(-5 / 360),
                      child: Text(
                        'Date night or long road trip to the hills,we have a car for everything and delivered to your doodstep ',
                        textAlign: TextAlign.center,
                        strutStyle: StrutStyle(
                          height: 1.8,
                        ),
                        style: GoogleFonts.roboto(
                            color: Colors.white38,
                            fontSize: 16,
                            fontWeight: FontWeight.w500),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                RotationTransition(
                    turns: new AlwaysStoppedAnimation(-5 / 360),
                    child: ButtonTheme(
                        minWidth: 140,
                        height: 55,
                        child: RaisedButton(
                          elevation: 0,
                          color: Colors.white,
                          child: Text("Next",
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15)),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyAppTwo()),
                            );
                          },
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(30.0),
                          ),
                        ))),
              ],
            ),
          ),
        ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: __loginCode(),
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.black);
  }
}
