import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:krishighar/firebase/firebase_auth.dart';
import 'package:krishighar/screens/Home_screen/butto_nav_bar.dart';
import 'package:krishighar/screens/authintic/Registation_screen.dart';
import 'package:krishighar/screens/authintic/forget_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<LoginScreen> {
  bool isPasswordVisible = false;
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _emailOrPhoneController = TextEditingController();
  String? _emailOrPhoneError;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 0),
          child: AppBar(backgroundColor: Color.fromARGB(255, 2, 141, 7)),
        ),
        body: Container(
          color: Color.fromARGB(255, 247, 245, 244),
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      if (!isKeyboardVisible) SizedBox(height: 40),
                      Form(
                        key: _formKey,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(10, 140, 10, 10),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    controller: _emailOrPhoneController,
                                    cursorColor:
                                        Color.fromARGB(255, 247, 245, 244),
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                      hintText: "Email or Phone Number",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 199, 195, 195)),
                                      prefixIcon: Icon(Icons.email,
                                          color: Colors.black),
                                      contentPadding: EdgeInsets.only(top: 20),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      errorText: _emailOrPhoneError,
                                    ),
                                    validator: (value) {
                                      bool isEmail = RegExp(
                                              r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$')
                                          .hasMatch(value ?? '');
                                      bool isPhoneNumber =
                                          RegExp(r'^[0-9]{10}$')
                                              .hasMatch(value ?? '');

                                      if (!isEmail && !isPhoneNumber) {
                                        return 'Enter a valid email or phone number';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: TextFormField(
                                    cursorColor:
                                        Color.fromARGB(255, 153, 149, 149),
                                    keyboardType: TextInputType.visiblePassword,
                                    obscureText: !isPasswordVisible,
                                    controller: _passwordController,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                          color: Color.fromARGB(
                                              255, 199, 195, 195)),
                                      prefixIcon: Icon(Icons.password,
                                          color: Colors.black),
                                      suffixIcon: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isPasswordVisible =
                                                !isPasswordVisible;
                                          });
                                        },
                                        child: Icon(
                                          isPasswordVisible
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: Colors.black,
                                        ),
                                      ),
                                      contentPadding: EdgeInsets.only(top: 20),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    validator: (value) {
                                      bool isPasswordValid = RegExp(
                                              r'^(?=.[A-Z])(?=.[a-z])(?=.\d)[A-Za-z\d@$!%?&]{8,}$')
                                          .hasMatch(value ?? '');

                                      if (!isPasswordValid) {
                                        return 'Password must have at least 8 characters, one uppercase letter, one lowercase letter, and one digit';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 12.0),
                                alignment: Alignment.centerRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                ForgetPasswordPage()));
                                  },
                                  child: Text(
                                    'Forget password ?',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30),
                              Material(
                                child: Container(
                                  height: 48,
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 2, 141, 7),
                                    borderRadius: BorderRadius.circular(17),
                                  ),
                                  child: TextButton(
                                    onPressed: () {
                                      // FireBaseAuthService().signIn(
                                      //     _emailOrPhoneController.text,
                                      //     _passwordController.text);
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => ButtonNavbar()));
                                    },
                                    child: Text(
                                      "LOGIN",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 23,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'or login using',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(118, 5, 20, 20),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 23,
                                      backgroundColor: Colors.blue,
                                      child: Icon(
                                        Icons.facebook,
                                        size: 45,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    CircleAvatar(
                                      radius: 23,
                                      backgroundColor: Colors.red,
                                      child: Image.asset(
                                        'assets/go.png', // Replace with your Google icon asset
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 45),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text(
                                      " Don't have an account?",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) => SignUp()));
                                        },
                                        child: Text(
                                          "create account",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.16,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 2, 141, 7),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage('assets/logo.png'),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 20, 8, 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Center(
                              child: Text(
                                "WELCOME !",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 26,
                                    color: Colors.white),
                              )),
                          Row(
                            children: [
                              Center(
                                  child: Text(
                                    "Login To",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  )),
                              SizedBox(
                                width: 9,
                              ),
                              Center(
                                  child: Text(
                                    "Krishak Ghar",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.yellow),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
