import 'package:flutter/material.dart';
// import 'login_screen.dart';
// import 'splash_screen.dart';

class Register_Screen extends StatefulWidget {
  const Register_Screen({super.key});

  @override
  State<Register_Screen> createState() => _Register_ScreenState();
}

class _Register_ScreenState extends State<Register_Screen> {
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController usernameTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController cpasswordTextEditingController =
      TextEditingController();

  //keys

  GlobalKey<FormFieldState> nameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> usernameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> cpasswordKey = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 24,
            width: 360,
            color: Color.fromRGBO(196, 196, 196, 1),
          ),
          const SizedBox(
            height: 20,
          ),
          Image.network(
              "https://play-lh.googleusercontent.com/QdjahHhp2ILzQtR6etAYa9xmKe9RbdbQcNAKrriE_Pwc7sGx8E-W6g66XTTD9BzIWQ=w240-h480-rw"),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: const EdgeInsets.only(right: 150),
            child: Text(
              "Create your Account",
              // style:
              //     GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        spreadRadius: 0,
                        blurRadius: 10)
                  ]),
              child: TextFormField(
                controller: nameTextEditingController,
                key: nameKey,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  print("In name Validator");
                  if (value == null || value.isEmpty) {
                    return "Please enter name ";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        spreadRadius: 0,
                        blurRadius: 10)
                  ]),
              child: TextFormField(
                controller: usernameTextEditingController,
                key: usernameKey,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "UserName",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  print("In username Validator");
                  if (value == null || value.isEmpty) {
                    return "Please enter username ";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        spreadRadius: 0,
                        blurRadius: 10)
                  ]),
              child: TextFormField(
                controller: passwordTextEditingController,
                key: passwordKey,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  print("In password Validator");
                  if (value == null || value.isEmpty) {
                    return "Please enter password ";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.15),
                        offset: Offset(0, 3),
                        spreadRadius: 0,
                        blurRadius: 10)
                  ]),
              child: TextFormField(
                controller: cpasswordTextEditingController,
                key: cpasswordKey,
                decoration: InputDecoration(
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) {
                  print("In Password Validator");
                  if (value == null || value.isEmpty) {
                    return "Please enter Password";
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              height: 24,
              width: 320,
              decoration: BoxDecoration(
                color: Color.fromRGBO(14, 161, 125, 1),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text("Sign In"),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account "),
              GestureDetector(
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const TransactionScreen()),
                  // );
                },
                child: Text(
                  "Sign in",
                  // style: GoogleFonts.poppins(
                  //     color: Color.fromRGBO(14, 161, 125, 1),
                  //     fontSize: 15,
                  //     fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
