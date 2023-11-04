import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';
import 'sign_in.dart';
import 'sign_up.dart';

class LoginPage extends StatelessWidget {
  final String username = "root";
  final String password = "1234";

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignIn()));
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white70,
              )),
          title: const Text(
            "Login Page",
            style: TextStyle(color: Colors.white70),
          )),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: Image.asset(
                "assets/icons/pngwing.com.png",
                height: 100,
                width: 100,
              )),
          Padding(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 75),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon: const Icon(
                    Icons.person_4_outlined,
                    color: Colors.white70,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "username",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "username",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 50, right: 50, top: 20, bottom: 20),
            child: TextField(
              obscureText: true,
              obscuringCharacter: "*",
              controller: passwordController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon: const Icon(Icons.password, color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.red)),
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "password",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: MaterialButton(
                color: Colors.white70,
                shape: const StadiumBorder(),
                height: 50,
                minWidth: 100,
                onPressed: () {
                  if (username == usernameController.text &&
                      password == passwordController.text) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text(
                        "Username or Password incorrect!!!",
                        style: TextStyle(color: Colors.red, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                      backgroundColor: Colors.black54,
                    ));
                  }
                  usernameController.text = "";
                  passwordController.text = "";
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.sriracha(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                  selectionColor: Colors.white,
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignupPage()));
              },
              child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 10),
                      children: [
                    TextSpan(text: "Don't have an account,"),
                    TextSpan(
                        text: "SignUp",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])))
        ],
      ),
    );
  }
}
