import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyappNine());
}

class MyappNine extends StatelessWidget {
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
  Widget mychip() {
    return Container(
      height: 50,
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
      child: Center(
          child: Icon(
        Icons.add_a_photo,
        color: Colors.black,
      )),
    );
  }

  Widget __loginCode() {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: <Widget>[
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
            padding: EdgeInsets.only(left: 30, right: 30),
            child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10,
                childAspectRatio: (180 / 175),
                mainAxisSpacing: 10,
                shrinkWrap: true,
                children: <Widget>[mychip(), mychip(), mychip()])),
      ]),
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: __loginCode(),
      backgroundColor: Colors.black,
      bottomNavigationBar: Container(
          child: ButtonTheme(
              height: 55,
              child: RaisedButton(
                elevation: 0,
                color: Colors.black,
                child: Text("Done",
                    style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 15)),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => MyappFive()),
                  // );
                },
              ))),
    );
  }
}
