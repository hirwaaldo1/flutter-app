import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './addcar.dart';

void main() {
  runApp(MyappEight());
}

class MyappEight extends StatelessWidget {
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
          child: Column(children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Container(
                padding: EdgeInsets.all(20),
                child: Text('Admin',
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
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Name Of Car',
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Mercedes-Benz'),
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 140, right: 40, left: 40),
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
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Class',
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
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'S-class'),
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 230, right: 40, left: 40),
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
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Price',
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '1,000,000'),
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 320, right: 40, left: 40),
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
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Describe',
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'GLA 180 Urban Edition 5d'),
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 410, right: 40, left: 40),
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
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Passenger',
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
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '4 passenger'),
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 500, right: 40, left: 40),
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
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Doors',
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
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: '4 Doors'),
                          ))
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(top: 500, right: 40, left: 40),
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
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 12, top: 10),
                        child: Text(
                          'Doors',
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
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: '4 Doors'),
                          ))
                    ],
                  )),
            ],
          ),
        )
      ])),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: __loginCode(),
        bottomNavigationBar: Container(
            child: ButtonTheme(
                height: 55,
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.black,
                  child: Text("Next",
                      style: GoogleFonts.roboto(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyappNine()),
                    );
                  },
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(12.0),
                    bottomLeft: const Radius.circular(12.0),
                    bottomRight: const Radius.circular(12.0),
                  )),
                ))),
        backgroundColor: Colors.black);
  }
}
