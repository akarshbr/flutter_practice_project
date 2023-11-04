import 'package:flutter/material.dart';
import 'sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: Text(
                "Henlo",
                style:
                    GoogleFonts.cherryBombOne(fontSize: 50, color: Colors.white70),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: const Image(
                image: AssetImage("assets/icons/pngwing.com.png"),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: MaterialButton(
                minWidth: 100,
                height: 50,
                shape: const StadiumBorder(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                color: Colors.white70,
                child: Text("Login",
                    style: GoogleFonts.sriracha(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: MaterialButton(
                minWidth: 100,
                height: 50,
                shape: const StadiumBorder(),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignupPage()));
                },
                color: Colors.white70,
                child: Text(
                  "Sign UP",
                  style: GoogleFonts.sriracha(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
