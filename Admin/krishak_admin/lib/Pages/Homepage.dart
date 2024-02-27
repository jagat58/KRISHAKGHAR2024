import 'package:flutter/material.dart';
import 'package:krishak_admin/Pages/CustomerDetails/CustomerDetail.dart';
import 'package:krishak_admin/Pages/ProduxtPage.dart/ProductPage.dart';
import 'package:krishak_admin/Pages/ProduxtPage.dart/SaleRequest/Salerequest.dart';
import 'package:krishak_admin/Pages/Transactions/Transcation.dart';

class AdminHomepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color appBarColor =
        MediaQuery.of(context).size.width > 600 ? Colors.blue : Colors.black;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Admin Homepage',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(9.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 20.0,
          children: <Widget>[
            _buildListItemContainer(context, 'Products', Icons.shopping_cart),
            _buildListItemContainer(context, 'Customer Detail', Icons.person),
            _buildListItemContainer(context, 'Orders details', Icons.list_alt),
            _buildListItemContainer(
                context, 'Sell request', Icons.question_answer),
            _buildListItemContainer(
                context, 'Transactions', Icons.compare_arrows),
          ],
        ),
      ),
    );
  }

  Widget _buildListItemContainer(
      BuildContext context, String text, IconData iconData) {
    return GestureDetector(
      onTap: () {
        if (text == 'Products') {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => ProductPage()));
        } else if (text == 'Customer Detail') {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => CustomerDetails()));
        } else if (text == 'Orders details') {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => OrdersDetailScreen()));
        } else if (text == 'Sell request') {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => Salerequest()));
        } else if (text == 'Transactions') {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => TransactionScreen()));
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
              size: 50.0,
            ),
            SizedBox(height: 8.0), // Add space between icon and text
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center, // Align text to the center
            ),
          ],
        ),
      ),
    );
  }
}

class ProductsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products Screen'),
      ),
      body: Center(
        child: Text('This is the Products screen'),
      ),
    );
  }
}

class CustomerDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Detail Screen'),
      ),
      body: Center(
        child: Text('This is the Customer Detail screen'),
      ),
    );
  }
}

class OrdersDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orders Detail Screen'),
      ),
      body: Center(
        child: Text('This is the Orders Detail screen'),
      ),
    );
  }
}

class SellRequestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sell Request Screen'),
      ),
      body: Center(
        child: Text('This is the Sell Request screen'),
      ),
    );
  }
}

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions Screen'),
      ),
      body: Center(
        child: Text('This is the Transactions screen'),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: AdminHomepage(),
  ));
}
