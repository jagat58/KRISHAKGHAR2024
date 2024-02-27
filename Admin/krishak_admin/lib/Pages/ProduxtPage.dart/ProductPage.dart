import 'package:flutter/material.dart';
import 'package:krishak_admin/Pages/ProduxtPage.dart/Form/AddProduct.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Product Page'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          children: [
            _buildListItemContainer(context, 'Listed Products', Icons.list),
            _buildListItemContainer(context, 'Add Product', Icons.add),
          ],
        ),
      ),
    );
  }

  Widget _buildListItemContainer(
      BuildContext context, String text, IconData iconData) {
    return GestureDetector(
      onTap: () {
        if (text == 'Listed Products') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ListedProductsPage()),
          );
        } else if (text == 'Add Product') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProducts()),
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Colors.white,
              size: 40.0,
            ),
            SizedBox(height: 8.0),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  CustomAppBar({required this.title});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor:
          MediaQuery.of(context).size.width > 600 ? Colors.blue : Colors.black,
      elevation: 0,
      centerTitle: true,
    );
  }
}

class ListedProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listed Products'),
      ),
      body: Center(
        child: Text('Listed Products Page'),
      ),
    );
  }
}
