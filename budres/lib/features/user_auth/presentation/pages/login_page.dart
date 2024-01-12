import 'dart:math';

import 'package:budres/features/user_auth/presentation/pages/register_page.dart';
import 'package:budres/features/user_auth/presentation/widgets/form_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1DA1F2),
        body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(80),
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width,
                  child: SvgPicture.asset('assets/svg/login.svg'),
                ),
                Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.2,
                      decoration: BoxDecoration(color: Color(0xff1DA1F2)),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(
                              0xfff1f1f1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40),
                            )),
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              "Login to your account",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height / 2.56,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                      topRight: Radius.circular(40)),
                                  color: Color(0xffffffff)),
                              child: Center(
                                  child: Container(
                                padding: EdgeInsets.all(30),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            labelText: 'Username',
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      SizedBox(
                                        height: 50,
                                        child: TextField(
                                          decoration: InputDecoration(
                                            labelText: 'Password',
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10)),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      GestureDetector(
                                        onTap: () => {
                                          Navigator.pushNamed(context, '/home')
                                        },
                                        child: Container(
                                            height: 50,
                                            decoration: BoxDecoration(
                                              color: Color(0xff1DA1F2),
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Center(
                                                child: Text(
                                              "LOGIN",
                                              style: TextStyle(
                                                  color: Color(0xffffffff),
                                                  fontWeight: FontWeight.bold),
                                            ))),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text("Don’t have an account? "),
                                          GestureDetector(
                                            onTap: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          RegisterPage()))
                                            },
                                            child: Text(
                                              "Register here",
                                              style: TextStyle(
                                                  color: Color(0xff1DA1F2)),
                                            ),
                                          )
                                        ],
                                      )
                                    ]),
                              )),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            )));
  }
}
