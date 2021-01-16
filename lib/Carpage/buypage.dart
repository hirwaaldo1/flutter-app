import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './home.dart';
import './payment.dart';
import '../Animation/FadeAnimation.dart';

void main() {
  runApp(MyappFive());
}

class MyappFive extends StatelessWidget {
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
  final List<String> images = [
    'https://images.unsplash.com/photo-1586882829491-b81178aa622e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586871608370-4adee64d1794?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2862&q=80',
    'https://images.unsplash.com/photo-1586901533048-0e856dff2c0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586902279476-3244d8d18285?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2850&q=80',
    'https://images.unsplash.com/photo-1586943101559-4cdcf86a6f87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1556&q=80',
    'https://images.unsplash.com/photo-1586951144438-26d4e072b891?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
    'https://images.unsplash.com/photo-1586953983027-d7508a64f4bb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80',
  ];
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      images.forEach((imageUrl) {
        precacheImage(NetworkImage(imageUrl), context);
      });
    });
    super.initState();
  }

  Widget __loginCode() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          FadeAnimation(
              2.3,
              Container(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => MyappSix()),
                          );
                        },
                        child: Container(
                          child: Icon(Icons.arrow_back, color: Colors.black),
                        )),
                    SizedBox(
                      width: 280,
                    ),
                    Container(
                      child: Icon(Icons.menu_sharp, color: Colors.black),
                    )
                  ],
                ),
              )),
          FadeAnimation(
              2.1,
              Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 15,
                    top: 30,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text('Mercedes-Benz',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 23)))),
          FadeAnimation(
              2,
              Container(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 15,
                  ),
                  alignment: Alignment.topLeft,
                  child: Text('GLA 180 Urban Edition 5d',
                      style: GoogleFonts.roboto(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 13)))),
          SizedBox(
            height: 25,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 15,
            ),
            child: FadeAnimation(
                1.9,
                Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        "Frw 250",
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      child: Text(
                        "/day",
                        style: GoogleFonts.roboto(color: Colors.grey),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
            height: 30,
          ),
          FadeAnimation(
              1.8,
              Hero(
                  tag: "Carimage",
                  child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20),
                      child: CarouselSlider.builder(
                        itemCount: images.length,
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          enlargeCenterPage: false,
                        ),
                        itemBuilder: (context, index) {
                          return Container(
                            child: Center(
                                child: Image.network(images[index],
                                    fit: BoxFit.cover, width: 1000)),
                          );
                        },
                      )))),
          SizedBox(
            height: 30,
          ),
          FadeAnimation(
              1.6,
              Container(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  alignment: Alignment.topLeft,
                  child: Text('Technical specification',
                      style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 19)))),
          SizedBox(
            height: 20,
          ),
          FadeAnimation(
              1.5,
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.topLeft,
                child: Text('Automatic transmission',
                    style: GoogleFonts.roboto(color: Colors.black)),
              )),
          SizedBox(
            height: 5,
          ),
          FadeAnimation(
              1.4,
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.topLeft,
                child: Text('5 Passenger',
                    style: GoogleFonts.roboto(color: Colors.black)),
              )),
          SizedBox(
            height: 5,
          ),
          FadeAnimation(
              1.3,
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                alignment: Alignment.topLeft,
                child: Text('4 Doors',
                    style: GoogleFonts.roboto(color: Colors.black)),
              ))
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: __loginCode(),
        bottomNavigationBar: FadeAnimation(
            1.2,
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyappSeven()),
                  );
                },
                child: BottomAppBar(
                  elevation: 0,
                  child: Container(
                      padding: EdgeInsets.only(
                          top: 20, bottom: 20, right: 70, left: 70),
                      child: ButtonTheme(
                          minWidth: 200,
                          height: 55,
                          child: RaisedButton(
                            elevation: 0,
                            color: Colors.black,
                            child: Text("Buy Now",
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15)),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyappSeven()),
                              );
                            },
                            shape: new RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0),
                            )),
                          ))),
                ))),
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white);
  }
}
