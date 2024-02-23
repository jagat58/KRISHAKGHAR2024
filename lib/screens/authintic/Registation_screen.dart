import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:krishighar/firebase/firebase_auth.dart';
import 'package:krishighar/screens/Home_screen/butto_nav_bar.dart';
import 'package:krishighar/screens/authintic/login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _emailController = TextEditingController();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 0),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 2, 141, 7),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  color: Colors.transparent,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 140,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              cursorColor: Color.fromARGB(255, 250, 64, 7),
                              keyboardType: TextInputType.name,
                              decoration: InputDecoration(
                                hintText: "user name",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 195, 195)),
                                prefixIcon: Icon(Icons.person),
                                contentPadding: EdgeInsets.only(top: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your user name';
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
                              cursorColor: Color.fromARGB(255, 250, 64, 7),
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                hintText: "Email or phone",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 195, 195)),
                                prefixIcon: Icon(Icons.email),
                                contentPadding: EdgeInsets.only(top: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              cursorColor: Color.fromARGB(255, 250, 64, 7),
                              keyboardType: TextInputType.streetAddress,
                              decoration: InputDecoration(
                                hintText: "Address",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 195, 195)),
                                prefixIcon: Icon(Icons.location_pin),
                                contentPadding: EdgeInsets.only(top: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: TextFormField(
                              controller: _passwordController,
                              obscureText: !_isPasswordVisible,
                              cursorColor: Color.fromARGB(255, 250, 64, 7),
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                hintText: "password",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 195, 195)),
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isPasswordVisible = !_isPasswordVisible;
                                    });
                                  },
                                  child: Icon(
                                    _isPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(top: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }

                                if (value.length < 10) {
                                  return 'Password must be at least 10 characters long';
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
                              controller: _confirmPasswordController,
                              obscureText: !_isConfirmPasswordVisible,
                              cursorColor: Color.fromARGB(255, 250, 64, 7),
                              keyboardType: TextInputType.visiblePassword,
                              decoration: InputDecoration(
                                hintText: "confirm password",
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(255, 199, 195, 195)),
                                prefixIcon: Icon(Icons.password),
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isConfirmPasswordVisible =
                                          !_isConfirmPasswordVisible;
                                    });
                                  },
                                  child: Icon(
                                    _isConfirmPasswordVisible
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                  ),
                                ),
                                contentPadding: EdgeInsets.only(top: 20),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                             
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Material(
                          child: Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 2, 141, 7),
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: TextButton(
                              onPressed: () async {
                                if (_passwordController.text ==
                                    _confirmPasswordController.text) {
                                  try {
                                    await FireBaseAuthService()
                                        .SignUp(
                                            _emailController.text,
                                            _passwordController.text,
                                            )
                                        .then((value) => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (_) =>
                                                          ButtonNavbar())),
                                            });
                                  } catch (e) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content:
                                          Text("Unable to login because of $e"),
                                    ));
                                  }
                                } else {
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(SnackBar(
                                    content: Text("password not same"),
                                  ));
                                }
                              },
                              child: Text(
                                "REGISTER ACCOUNTS",
                                style: TextStyle(
                                    backgroundColor:
                                        Color.fromARGB(255, 2, 141, 7),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account",
                              style: TextStyle(color: Colors.black),
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
                            "REGISTATION!",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Colors.white),
                          )),
                          Row(
                            children: [
                              Center(
                                  child: Text(
                                "Register On",
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
