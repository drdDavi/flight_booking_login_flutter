import 'package:flight_booking_login_flutter/pages/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 50),
            Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 59,
              ),
            ),
            SizedBox(height: 60),
            Center(
              child: Text(
                'Login Instally',
                style: TextStyle(color: Color(0xFFA9A9BA)),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () => print('Facebook Tapped'),
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8), color: Color(0xFF3B5998), border: Border.all(color: Color(0xFFE6E6E6))),
                        child: Image.asset(
                          'assets/images/facebook.png',
                          height: 10,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(8),
                      onTap: () => print('Google Tapped'),
                      child: Container(
                        height: 40,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Color(0xFFE6E6E6))),
                        child: Image.asset(
                          'assets/images/google.png',
                          height: 10,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 30),
            Center(
              child: Text(
                'or',
                style: TextStyle(color: Color(0xFFA9A9BA)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                'E-mail ID',
                style: TextStyle(color: Color(0xFFA9A9BA), fontSize: 10),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Color(0xffE6E6E6)), borderRadius: BorderRadius.all(Radius.circular(6))),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                cursorWidth: 1,
                decoration: InputDecoration(isDense: true, border: InputBorder.none, focusedBorder: InputBorder.none),
                style: TextStyle(fontSize: 13),
              ),
            ),
            SizedBox(height: 30),
            Container(
              margin: EdgeInsets.only(left: 24),
              child: Text(
                'Password',
                style: TextStyle(color: Color(0xFFA9A9BA), fontSize: 10),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Color(0xffE6E6E6)), borderRadius: BorderRadius.all(Radius.circular(6))),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                cursorWidth: 1,
                decoration: InputDecoration(isDense: true, border: InputBorder.none, focusedBorder: InputBorder.none),
                style: TextStyle(fontSize: 13),
                obscureText: true,
              ),
            ),
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 24),
                  child: GestureDetector(
                    onTap: () => print('Forgot Password Pressed'),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: Color(0xFF7D59EE), fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => HomePage()));
              },
              child: Container(
                height: 48,
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(color: Color(0xFF7D59EE), borderRadius: BorderRadius.circular(6)),
                alignment: Alignment.center,
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: GestureDetector(
                    onTap: () => print('Forgot Password Pressed'),
                    child: Text(
                      'Don’t have an account?',
                      style: TextStyle(color: Color(0xFFA9A9BA), fontSize: 12),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  child: GestureDetector(
                    onTap: () => print('Create Account Pressed'),
                    child: Text(
                      'Create Account',
                      style: TextStyle(color: Color(0xFF7D59EE), fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
