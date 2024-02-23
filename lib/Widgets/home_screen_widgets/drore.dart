// import 'package:flutter/material.dart';
// import 'package:krishighar/screens/Home_screen/Education/Education.dart';
// import 'package:krishighar/screens/Home_screen/contactus/contacts.dart';

// import '../../screens/authintic/login_screen.dart';


// class DrawerWidgets extends StatefulWidget {
//   const DrawerWidgets({Key? key}) : super(key: key);

//   @override
//   State<DrawerWidgets> createState() => _DrawerWidgetsState();
// }

// class _DrawerWidgetsState extends State<DrawerWidgets> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(top: 9),
//       child: Drawer(
//         shadowColor: Colors.white,
        
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(20),
//             bottomRight: Radius.circular(20),
//           ),
//         ),
//         child: Wrap(
          
//           runSpacing: 28,
//           children: [
             
         
//             Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               crossAxisAlignment:CrossAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: ListTile(
//                     titleAlignment: ListTileTitleAlignment.center,
//                     title: Text(
//                       "Home",
//                       style: TextStyle(color: Colors.white), // Set text color
//                     ),
//                     leading: Icon(
//                       Icons.home,
//                       color: Colors.white, // Set icon color
//                     ),
//                     trailing: Icon(
//                       Icons.arrow_forward,
//                       color: Colors.white, // Set icon color
//                     ),
//                     onTap: () {
//                       // Navigator.of(context).pushReplacement(
//                       //   MaterialPageRoute(
//                       //     builder: (context) => HomeScreen(),
//                       //   ),
//                       // );
//                     },
//                   ),
//                 ),
//               ],
//             ),


//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ListTile(
//                 titleAlignment: ListTileTitleAlignment.center,
//                 title: Text(
//                   "cart",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 leading: Icon(
//                   Icons.production_quantity_limits,
//                   color: Colors.white,
//                 ),
//                 trailing: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.white,
//                 ),
//                 onTap: () {
//                   // Navigator.of(context).pushReplacement(
//                   //   MaterialPageRoute(
//                   //     builder: (context) => CardScreen(),
//                   //   ),
//                   // );
//                 },
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ListTile(
//                 titleAlignment: ListTileTitleAlignment.center,
//                 title: Text(
//                   "Market",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 leading: Icon(
//                   Icons.shopping_bag,
//                   color: Colors.white,
//                 ),
//                 trailing: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.white,
//                 ),
//                 onTap: () {
//                   // Navigator.of(context).pushReplacement(
//                   //   MaterialPageRoute(
//                   //     builder: (context) => OrdersScreen(),
//                   //   ),
//                   // );
//                 },
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ListTile(
//                 titleAlignment: ListTileTitleAlignment.center,
//                 title: Text(
//                   "Libraries",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 leading: Icon(
//                   Icons.book_online,
//                   color: Colors.white,
//                 ),
//                 trailing: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.white,
//                 ),
//                 onTap: () {
//                   // Navigator.of(context).push(
//                   //   MaterialPageRoute(
//                   //     builder: (context) => EducationScreen(),
//                   //   ),
//                  // );
//                 },
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ListTile(
//                 titleAlignment: ListTileTitleAlignment.center,
//                 title: Text(
//                   "Contact",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 leading: Icon(
//                   Icons.phone,
//                   color: Colors.white,
//                 ),
//                 trailing: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.white,
//                 ),
//                 onTap: () {
//                   Navigator.of(context).push(
//                     MaterialPageRoute(
//                       builder: (context) => ContactsScreen(),
//                     ),
//                   );
//                 },
//               ),
//             ),

//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: ListTile(
//                 titleAlignment: ListTileTitleAlignment.center,
//                 title: Text(
//                   "Log Out",
//                   style: TextStyle(color: Colors.white),
//                 ),
//                 leading: Icon(
//                   Icons.logout,
//                   color: Colors.white,
//                 ),
//                 trailing: Icon(
//                   Icons.arrow_forward,
//                   color: Colors.white,
//                 ),
//                 onTap: () {
//                   Navigator.of(context).pushReplacement(
//                     MaterialPageRoute(
//                       builder: (context) =>LoginScreen(),
//                     ),
//                   );
//                 },
//               ),
//             ),
//           ],
//         ),
//             backgroundColor:Color.fromARGB(255, 8, 198, 14),
//       ),
//     );
//   }
// }
