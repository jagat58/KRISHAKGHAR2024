import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TransactionScreen(),
    );
  }
}

class TransactionScreen extends StatefulWidget {
  TransactionScreen({Key? key}) : super(key: key);

  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final List<SalesData> data = [
    SalesData(
        'Friday', 35.0), // Ensure the value is provided as a double, not null
    SalesData('Sunday', 28.0),
    SalesData('Monday', 34.0),
    SalesData('Tuesday', 32.0),
    SalesData('Wednesday', 40.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Transaction',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 8, 2, 94),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 350),
                child: SfCircularChart(
                  title: ChartTitle(
                      text: 'Weekly Sales',
                      textStyle: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                  series: <PieSeries<SalesData, String>>[
                    PieSeries<SalesData, String>(
                      dataSource: data,
                      xValueMapper: (SalesData sales, _) => sales.month,
                      yValueMapper: (SalesData sales, _) => sales.dailySales,
                      dataLabelMapper: (SalesData sales, _) =>
                          sales.month + ' : ' + sales.dailySales.toString(),
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SalesData {
  SalesData(this.month, this.dailySales);

  final String month;
  final double dailySales;
}
