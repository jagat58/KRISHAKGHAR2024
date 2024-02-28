// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:krishighar/model/seed_model.dart';

import '../screens/Market_screen/product/product_detail_screen.dart';
class SeedWidgets extends StatelessWidget {
  const SeedWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: FirebaseFirestore.instance.collection('Seed').get(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text("Error"),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Container(
            height: Get.height / 5,
            child: Center(
              child: CupertinoActivityIndicator(),
            ),
          );
        }

        if (snapshot.data!.docs.isEmpty) {
          return Center(
            child: Text("No category found!"),
          );
        }

        if (snapshot.data != null) {
          return GridView.builder(
            itemCount: snapshot.data!.docs.length,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 0.80,
            ),
            itemBuilder: (context, index) {
              SeedModels seedModels = SeedModels(
                Image: snapshot.data!.docs[index]['Image'],
                Name: snapshot.data!.docs[index]['Name'],
              );

              return GestureDetector(
                onTap: () {Navigator.push(context,MaterialPageRoute(builder: (_)=>ProductDetailsScreen(productName: '', productPrice: '',)));},
                  
                
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 92, 92, 92)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12.0),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Image.network(
                                seedModels.Image,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          seedModels.Name,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }

        return Container();
      },
    );
  }
}
