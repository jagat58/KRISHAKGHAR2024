import 'package:flutter/material.dart';
import 'package:krishighar/screens/authintic/login_screen.dart';
import 'package:krishighar/screens/profile/AboutProfile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _HomePageState();
}

class _HomePageState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 0),
          child: AppBar(backgroundColor: Color.fromARGB(255, 2, 141, 7)),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 2, 141, 7)),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20,9, 20, 10),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Text(
                              "Krishak",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 28),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                            child: Text(
                              "Ghar",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.yellow,
                                  fontSize: 33),
                            ),
                          ),
                        ]),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width,
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 2, 141, 7)),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 105,
                          ),
                          Text(
                            " Your Account",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 65,
                          ),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(
                          //       Icons.notifications,
                          //       color: Colors.white,
                          //       size: 35,
                          //     ))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 110, 0, 0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        height: 90,
                        width: 370,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 1, // Blur radius
                                offset: Offset(0, 1),
                              )
                            ]),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage("assets/pp.jpg"),
                            ),
                            SizedBox(width: 25),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                              child: Column(
                                children: [
                                  Text(
                                    'Jagat Acharya',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "9825147470",
                                    style: TextStyle(fontSize: 17),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 50,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => AboutProfile()));
                                },
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 155,
                            width: 115,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 221, 216, 216)
                                        .withOpacity(0.6), // Shadow color
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 1, // Blur radius
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 247, 244),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/order.png"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "My Order",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 155,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 221, 216, 216)
                                        .withOpacity(0.6), // Shadow color
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 1, // Blur radius
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 247, 244),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/thumb.png"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "My Services",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            height: 155,
                            width: 115,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 221, 216, 216)
                                        .withOpacity(0.6), // Shadow color
                                    spreadRadius: 2, // Spread radius
                                    blurRadius: 1, // Blur radius
                                    offset: Offset(0, 3),
                                  )
                                ]),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 35,
                                ),
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 247, 244),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/route.png"),
                                                fit: BoxFit.cover)),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "My Address",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 370,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color:
                                  Colors.grey.withOpacity(0.5), // Shadow color
                              spreadRadius: 2, // Spread radius
                              blurRadius: 1, // Blur radius
                              offset: Offset(0, 1),
                            )
                          ]),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 247, 244),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/offer.png"),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Offers",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "All about offers and discount",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 247, 244),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/support.png"),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Support",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Let us know your issue to app",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height / 10.5,
                                  width: MediaQuery.of(context).size.width / 5,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 247, 244),
                                      borderRadius: BorderRadius.circular(13)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/out.png"),
                                                fit: BoxFit.cover)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,MaterialPageRoute(builder: (_)=>LoginScreen()));
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Logout",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Sign out the current account",
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
