import 'package:flutter/material.dart';
import 'package:krishighar/screens/Home_screen/Home_SCREEN/home_tab_controller.dart';
import 'package:krishighar/screens/Home_screen/butto_nav_bar.dart';

class AboutProfile extends StatefulWidget {
  const AboutProfile({super.key});

  @override
  State<AboutProfile> createState() => _ProfileState();
}

class _ProfileState extends State<AboutProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 0),
          child: AppBar(backgroundColor: Color.fromARGB(255, 2, 141, 7)),
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 6.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color:Color.fromARGB(255, 2, 141, 7)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 8, 30),
                child: Row(
                  children: [
                    // IconButton(
                    //     onPressed: () {
                    //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>ProfileScreen()));

                    //     },
                    //     icon: Icon(
                    //       Icons.arrow_back_ios_new_rounded,
                    //       color: Colors.white,
                    //     )),
                        SizedBox(width: 80,),
                    Text(
                      "My Profile",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                          
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(250, 90, 10, 0),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 47,
                  backgroundImage: AssetImage("assets/pp.jpg"),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 170,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 8, 8, 3),
                  child: Text(
                    "Full Name",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Container(
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11)),
                          hintText: "Jagat Acharya"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 8, 8, 3),
                  child: Text(
                    "Phonr Number",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Container(
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11)),
                          hintText: "+977 9825147470"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 8, 8, 3),
                  child: Text(
                    "Email Adderss",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  child: Container(
                    width: 360,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11)),
                          hintText: "jagatacharya59@gmail.com"),
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                InkWell(onTap: () {
                 // Navigator.push(context, MaterialPageRoute(builder: (_)=>ButtonNavbar()));
                  },
                  child: Center(
                    child: Container(
                      height: 68,
                      width:MediaQuery.of(context).size.width*0.9,
                      decoration: BoxDecoration(
                          color:Color.fromARGB(255, 2, 141, 7),
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
