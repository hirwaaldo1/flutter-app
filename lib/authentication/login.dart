import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './singup.dart';
import '../Animation/FadeAnimation.dart';
import '../Carpage/home.dart';

void main() {
  runApp(MyappThree());
}

class MyappThree extends StatelessWidget {
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
  Widget __loginCode() {
    return SafeArea(
      child: SingleChildScrollView(
          child: FadeAnimation(
              1.5,
              Column(children: <Widget>[
                Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://discord.com/assets/28174a34e77bb5e5310ced9f95cb480b.png'),
                            fit: BoxFit.cover))),
                Container(
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(60.0),
                        )),
                    height: MediaQuery.of(context).size.height * 1,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(
                            top: 50,
                            left: 147,
                            right: 130,
                          ),
                          child: Text(
                            'Login',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 30,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(
                                      top: 120, right: 40, left: 40),
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
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 12, top: 10),
                                        child: Text(
                                          'Email',
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 12, top: 10),
                                          padding: EdgeInsets.only(top: 12),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText:
                                                    'hirwaaldo1@gmail.com'),
                                          ))
                                    ],
                                  )),
                              Container(
                                  margin: EdgeInsets.only(
                                      top: 20, right: 40, left: 40),
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
                                        offset: Offset(
                                            0, 2), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: 12, top: 10),
                                        child: Text(
                                          'Password',
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(
                                              left: 12, top: 10),
                                          padding: EdgeInsets.only(top: 12),
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: '***************'),
                                          ))
                                    ],
                                  )),
                            ],
                          ),
                        ),
                        Container(
                            margin:
                                EdgeInsets.only(top: 300, right: 40, left: 40),
                            child: ButtonTheme(
                                minWidth: 340,
                                height: 55,
                                child: RaisedButton(
                                  elevation: 0,
                                  color: Colors.black,
                                  child: Text("Login",
                                      style: GoogleFonts.roboto(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15)),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MyappSix()),
                                    );
                                  },
                                  shape: new RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight: const Radius.circular(12.0),
                                  )),
                                ))),
                      ],
                    )),
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
                    MaterialPageRoute(builder: (context) => MyappFour()),
                  );
                },
                child: BottomAppBar(
                  elevation: 0,
                  child: Container(
                    padding: EdgeInsets.only(
                        top: 20, bottom: 20, right: 75, left: 75),
                    child: Text("Don't have any account? Sign Up",
                        style: GoogleFonts.roboto(
                            color: Colors.black, fontWeight: FontWeight.w500)),
                  ),
                ))),
        backgroundColor: Colors.black);
  }
}
