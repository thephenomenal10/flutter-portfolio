import 'package:decoding_text_effect/decoding_text_effect.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myCV/services/databaseService.dart';
import 'package:myCV/widgets/dialogBox.dart';
import 'package:social_media_buttons/social_media_button.dart';

import '../constants.dart';

class SixthMobilePage extends StatefulWidget {
  @override
  _SixthMobilePageState createState() => _SixthMobilePageState();
}

class _SixthMobilePageState extends State<SixthMobilePage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController emailController = new TextEditingController();
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController messageController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,r
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              new Container(
                width: 400,
                // alignment: Alignment.center,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      width: MediaQuery.of(context).size.width /1,
                      color: blueColor,
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DecodingTextEffect(
                              "CONTACT",
                              decodeEffect: DecodeEffect.fromEnd,
                              textStyle: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 4.0),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.0, top: 30),
                          child: Container(
                            height: 3.0,
                            width: 50.0,
                            color: violet,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0, top: 30),
                          child: Text(
                            "Get In Touch",
                            style: GoogleFonts.varelaRound(
                                textStyle: new TextStyle(
                                    color: Colors.white, fontSize: 16)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 20,
                      ),
                      child: new Form(
                          key: _formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Container(
                                  child: Padding(
                                    padding: EdgeInsets.all(5),
                                    child: TextFormField(
                                      cursorColor: violet,
                                      style: GoogleFonts.varelaRound(
                                          textStyle: new TextStyle(
                                              color: Colors.white,
                                              fontSize: 18)),
                                      controller: nameController,
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return "enter name";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        hintText: "Name",
                                        enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.white38)),
                                        focusedBorder: UnderlineInputBorder(
                                            borderSide:
                                                BorderSide(color: violet)),
                                        contentPadding: EdgeInsets.all(8.0),
                                        hintStyle: GoogleFonts.varelaRound(
                                            textStyle: new TextStyle(
                                                color: Colors.white38,
                                                fontSize: 18)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // width: 250,
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: TextFormField(
                                    controller: emailController,
                                    cursorColor: violet,
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return "enter your email";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Email",
                                      contentPadding: EdgeInsets.all(8.0),
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white38)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: violet)),
                                      hintStyle: GoogleFonts.varelaRound(
                                          textStyle: new TextStyle(
                                              color: Colors.white38,
                                              fontSize: 18)),
                                    ),
                                    keyboardType: TextInputType.emailAddress,
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: TextFormField(
                                    cursorColor: violet,
                                    controller: phoneController,
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return "enter your phone no.";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Phone",
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white38)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: violet)),
                                      contentPadding: EdgeInsets.all(8.0),
                                      hintStyle: GoogleFonts.varelaRound(
                                          textStyle: new TextStyle(
                                              color: Colors.white38,
                                              fontSize: 18)),
                                    ),
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: EdgeInsets.all(8),
                                  child: TextFormField(
                                    controller: messageController,
                                    cursorColor: violet,
                                    maxLines: 3,
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                    validator: (val) {
                                      if (val.isEmpty) {
                                        return "enter your mesage";
                                      }
                                      return null;
                                    },
                                    decoration: InputDecoration(
                                      hintText: "Message",
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.white38)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide:
                                              BorderSide(color: violet)),
                                      contentPadding: EdgeInsets.all(8.0),
                                      hintStyle: GoogleFonts.varelaRound(
                                          textStyle: new TextStyle(
                                              color: Colors.white38,
                                              fontSize: 18)),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: new RaisedButton(
                                  mouseCursor: MouseCursor.uncontrolled,
                                  elevation: 4.0,
                                  hoverColor: blueColor,
                                  hoverElevation: 10.0,
                                  visualDensity: VisualDensity.comfortable,
                                  splashColor: Colors.white,
                                  animationDuration:
                                      Duration(milliseconds: 300),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  onPressed: () {
                                    submitData();
                                  },
                                  child: new Text(
                                    "Submit",
                                    style: GoogleFonts.varelaRound(
                                        textStyle: new TextStyle(
                                            color: Colors.white, fontSize: 18)),
                                  ),
                                  color: violet,
                                ),
                              ),
                            ],
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Padding(
                padding: EdgeInsets.only(right: 200.0),
                child: Container(
                  height: 3.0,
                  width: 140.0,
                  color: blueColor,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                // margin: EdgeInsets.only(right: 30),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.phone, color: violet, size: 20),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "+918171940441",
                          style: GoogleFonts.varelaRound(
                              textStyle: new TextStyle(
                                  color: Colors.white, fontSize: 16)),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.email, color: violet, size: 20),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "sahyogsaini.cse@gmail.com",
                          style: GoogleFonts.varelaRound(
                              textStyle: new TextStyle(
                                  color: Colors.white, fontSize: 16)),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(Icons.location_city, color: violet, size: 20),
                        SizedBox(
                          width: 20.0,
                        ),
                        Text(
                          "Delhi, INDIA",
                          style: GoogleFonts.varelaRound(
                              textStyle: new TextStyle(
                                  color: Colors.white, fontSize: 16)),
                        ),
                      ],
                    ),
                    SizedOverflowBox(size: Size(0, 70),),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            margin: EdgeInsets.only(top: 10, right: 130),
                            child: Row(
                              // mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SocialMediaButton.linkedin(
                                  url:
                                      "https://www.linkedin.com/in/sahyog-saini-4b511617b/",
                                  color: violet,
                                  size: 20.0,
                                ),
                                SocialMediaButton.twitter(
                                  url: "https://twitter.com/SainiSahyog",
                                  color: violet,
                                  size: 20.0,
                                ),
                                SocialMediaButton.facebook(
                                  url: "https://www.facebook.com/sahyog.cse",
                                  color: violet,
                                  size: 20.0,
                                ),
                                SocialMediaButton.instagram(
                                  url:
                                      "https://www.instagram.com/the_phenomenal.__/",
                                  color: violet,
                                  size: 20.0,
                                ),
                                SocialMediaButton.github(
                                  url: "https://github.com/thephenomenal10",
                                  color: violet,
                                  size: 20.0,
                                ),
                                SocialMediaButton.medium(
                                  url: "https://medium.com/@sahyogsaini.cse",
                                  color: violet,
                                  size: 20.0,
                                ),
                              ],
                            )),
                      ],
                    ),
                    Text(
                      "© 2020 Sahyog. All rights reserved.",
                      style: GoogleFonts.varelaRound(
                          textStyle:
                              new TextStyle(color: Colors.white, fontSize: 12)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  submitData() {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      Map<String, String> userData = {
        "Name": nameController.text,
        "Email": emailController.text,
        "Phone": phoneController.text,
        "message": messageController.text
      };

      DatabaseService().data(userData, emailController.text);
      DialogBox().show(context, "Success", "Your data is saved");

      setState(() {
        _formKey.currentState.reset();
      });
    }
  }
}
