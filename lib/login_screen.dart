import 'package:expense_manager/register_screen.dart';
import 'package:flutter/material.dart';

class Login_Screen extends StatefulWidget {
  const Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  TextEditingController userNametextEditingController = TextEditingController();
  TextEditingController passWordTextEditingController = TextEditingController();
  //key
  GlobalKey<FormFieldState> userNameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passWord = GlobalKey<FormFieldState>();

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
            height: 40,
          ),
          Image.network(
              "https://play-lh.googleusercontent.com/QdjahHhp2ILzQtR6etAYa9xmKe9RbdbQcNAKrriE_Pwc7sGx8E-W6g66XTTD9BzIWQ=w240-h480-rw"),
        const  Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text("Login to your account "),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              decoration:  const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow:  [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                      blurRadius: 10,
                    ),
                  ]),
              child: TextFormField(
                controller: userNametextEditingController,
                key: userNameKey,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "UserName",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  print("In UserName Validator");
                  if (value == null || value.isEmpty) {
                    print("Enter the username");
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.15),
                      offset: Offset(0, 3),
                      spreadRadius: 0,
                      blurRadius: 10,
                    ),
                  ]),
              child: TextFormField(
                controller: passWordTextEditingController,
                key: passWord,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                validator: (value) {
                  print("In Password validator");
                  if (value == null || value.isEmpty) {
                    return "Enter the password";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 49,
              width: 320,
              decoration:  const BoxDecoration(
                color: Color.fromRGBO(14, 161, 125, 1),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child:  const Center(
                child: Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const   Text(
                "Don't have an account ? ",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Register_Screen()));
                },
                child: const Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Color.fromRGBO(14, 161, 125, 1),
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
