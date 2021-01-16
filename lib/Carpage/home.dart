import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './buypage.dart';
import '../Animation/FadeAnimation.dart';

void main() {
  runApp(MyappSix());
}

class MyappSix extends StatelessWidget {
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
  DateTime selectedDate = DateTime.now();
  Color c = const Color(0xFFEBEBEB);
  Color d = const Color(0xFF242B2E);
  String dropdownValue = 'Mercedes-Benz';
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  Widget __loginCode() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 25, top: 25, bottom: 15),
            child: FadeAnimation(
                1,
                Row(
                  children: <Widget>[
                    InkWell(
                      child: Container(
                          child: Text('Rsdb Cars',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23))),
                    ),
                    SizedBox(
                      width: 190,
                    ),
                    Container(
                      child: Icon(Icons.menu_sharp, color: Colors.black),
                    ),
                  ],
                )),
          ),
          FadeAnimation(
              1.2,
              Container(
                  padding: EdgeInsets.only(left: 25, top: 15, bottom: 15),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                          width: 130.0,
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () => _selectDate(context),
                            elevation: 0,
                            child: Text(
                              "${selectedDate.toLocal()}".split(' ')[0],
                              style: GoogleFonts.roboto(
                                  fontSize: 15, color: Colors.grey),
                            ),
                            color: c,
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(10.0),
                                    bottomLeft: const Radius.circular(10.0),
                                    bottomRight: const Radius.circular(10.0),
                                    topRight: const Radius.circular(10.0))),
                          )),
                    ],
                  ))),
          FadeAnimation(
              1.2,
              Container(
                height: 68,
                padding: EdgeInsets.only(left: 25, bottom: 15, right: 25),
                child: DropdownButtonFormField<String>(
                  value: dropdownValue,
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black26, width: 1.0),
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(10.0),
                        )),
                  ),
                  style: TextStyle(color: Colors.black),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                    });
                  },
                  items: <String>[
                    'Mercedes-Benz',
                    'Mercedes-Two',
                    'Mercedes-Free',
                    'Mercedes-Four'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: GoogleFonts.roboto(fontWeight: FontWeight.w700),
                      ),
                    );
                  }).toList(),
                ),
              )),
          InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyappFive()),
                );
              },
              child: FadeAnimation(
                  1.4,
                  Container(
                    margin: EdgeInsets.only(
                        left: 25, bottom: 15, top: 15, right: 25),
                    child: Stack(children: [
                      Row(
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                              color: d,
                              borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(12.0),
                                bottomLeft: const Radius.circular(12.0),
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
                            height: 200,
                            alignment: Alignment.bottomLeft,
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'S-Class',
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 18),
                            ),
                          )),
                          Expanded(
                              child: Container(
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: const Radius.circular(12.0),
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
                                  alignment: Alignment.bottomLeft,
                                  padding: EdgeInsets.all(20),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        child: Text(
                                          "Frw 250",
                                          style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          " / day",
                                          style: GoogleFonts.roboto(
                                              color: Colors.grey, fontSize: 12),
                                        ),
                                      ),
                                    ],
                                  ))),
                        ],
                      ),
                      Positioned(
                          right: 50,
                          child: Hero(
                              tag: "Carimage",
                              child: Container(
                                  width: 210,
                                  height: 100,
                                  margin: EdgeInsets.only(top: 30),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/Daco_2708623 (1).png'),
                                          fit: BoxFit.cover)))))
                    ]),
                  )))
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(body: __loginCode(), backgroundColor: Colors.white);
  }
}
