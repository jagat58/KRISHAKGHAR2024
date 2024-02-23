import 'package:flutter/material.dart';
import 'package:krishighar/screens/Market_screen/product/product_detail_screen.dart';

class Seeds extends StatelessWidget {
  const Seeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Seeds',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 60, 188, 1),
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 168.0,
            crossAxisCount: 2,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 25.0,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: 7,
          itemBuilder: (context, index) {
            return _buildProductCard(
              context: context,
              productName: 'Product $index',
              productPrice: '\RS${(index + 1) * 200}/kg',
            );
          },
        ),
      ),
    );
  }

  Widget _buildProductCard({
    required BuildContext context,
    required String productName,
    required String productPrice,
  }) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsScreen(
              productName: productName,
              productPrice: productPrice,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 112.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/icons/cauli.png'),          

                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 9,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(productPrice),
              ],
            ),
          ],
        ),
      ),
    );
  }
}