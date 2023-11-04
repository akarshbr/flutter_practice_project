import 'package:flutter/material.dart';
import 'package:flutter_practice_project/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'sign_in.dart';

class SignupPage extends StatelessWidget {
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  SignupPage({super.key});

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
          "Sign UP",
          style: TextStyle(color: Colors.white70),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Image.asset(
              "assets/icons/pngwing.com.png",
              height: 100,
              width: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: firstnameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon: const Icon(
                    Icons.person_4_outlined,
                    color: Colors.white70,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Firstname",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "Firstname",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: lastnameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon: const Icon(Icons.person_4_outlined,
                      color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Lastname",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "Lastname",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon:
                      const Icon(Icons.email_rounded, color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: phoneController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon: const Icon(Icons.phone_android_outlined,
                      color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Phone",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "Phone",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon: const Icon(Icons.person_3, color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Username",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "username",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white38,
                  prefixIcon:
                      const Icon(Icons.password_rounded, color: Colors.white70),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white70),
                  labelText: "Password",
                  labelStyle: TextStyle(color: Colors.white)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
            child: MaterialButton(
                color: Colors.white70,
                shape: const StadiumBorder(),
                height: 50,
                minWidth: 100,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                  firstnameController.text = "";
                  lastnameController.text = "";
                  emailController.text = "";
                  phoneController.text = "";
                  usernameController.text = "";
                  passwordController.text = "";
                },
                child: Text(
                  "Sign UP",
                  style: GoogleFonts.sriracha(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  selectionColor: Colors.white,
                )),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(color: Colors.white, fontSize: 10),
                      children: const [
                    TextSpan(text: "Already have an account,"),
                    TextSpan(
                        text: "Login.",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ])))
        ],
      ),
    );
  }
}
