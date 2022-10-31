import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.only(left: 20, right: 20, top: 150, bottom: 80),
          width: size.width,
          height: size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>
            [
              Text(
                'Welcome back to INVO',
                style: TextStyle(
                  color: Colors.deepPurpleAccent,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children:
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:
                    [
                      Image(
                        width: 40,
                        image: AssetImage('assets/icon/twitter.png',
                        ),
                      ),
                      SizedBox(width: 30),
                      Image(
                        width: 30,
                        image: AssetImage('assets/icon/facebook.png',
                        ),
                      ),
                      SizedBox(width: 30),
                      Image(
                        width: 30,
                        image: AssetImage('assets/icon/google.png',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email or phone number',
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurpleAccent
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      primary: Colors.deepPurpleAccent
                    ),
                      onPressed: () {},
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Create account',
                    style: TextStyle(
                      color: Colors.deepPurpleAccent,
                      fontWeight: FontWeight.bold
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
