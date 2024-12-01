import 'package:flutter/material.dart';
import 'login_screen.dart';
// import 'register_screen.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 24,
            width: 360,
            color: Color.fromRGBO(196, 196, 196, 1),
          ),
          const SizedBox(
            height: 150,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Login_Screen()),
              );
            },
            child: Container(
              height: 144,
              width: 144,
              decoration: BoxDecoration(
                color: Color.fromRGBO(234, 238, 235, 1),
                shape: BoxShape.circle,
              ),
              child: Image.network(
                  "https://play-lh.googleusercontent.com/QdjahHhp2ILzQtR6etAYa9xmKe9RbdbQcNAKrriE_Pwc7sGx8E-W6g66XTTD9BzIWQ=w240-h480-rw"),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          Text("Expense Manager"),
        ],
      ),
    );
  }
}
