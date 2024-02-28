import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  final Map<String, int> itemCountMap;
  final Map<String, double> itemPriceMap;
  Checkout({
    Key? key,
    required this.itemCountMap,
    required this.itemPriceMap,
  }) : super(key: key);
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  int _paymentMethod = 0;
  bool _showContainer = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 1.0, end: 1.3).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double maxFontSize = screenWidth < 600 ? 18.0 : 18.0 * 1.3;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 116, 4),
        title: Row(
          children: [
            const Text(
              'Checkout ',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Screen',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Checkout Screen',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _paymentMethod = 0;
                      _showContainer = false;
                    });
                    _controller.forward(from: 0.0);
                  },
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 0,
                        groupValue: _paymentMethod,
                        onChanged: (value) {
                          setState(() {
                            _paymentMethod = value!;
                            _showContainer = false;
                          });
                        },
                        activeColor: const Color.fromARGB(255, 0, 116, 4),
                      ),
                      AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Text(
                            'Cash on Delivery',
                            style: TextStyle(
                              fontSize: maxFontSize,
                              fontWeight: _paymentMethod == 0
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      _paymentMethod = 1;
                      _showContainer = true;
                    });
                    _controller.forward(from: 0.0);
                  },
                  child: Row(
                    children: [
                      Radio<int>(
                        value: 1,
                        groupValue: _paymentMethod,
                        onChanged: (value) {
                          setState(() {
                            _paymentMethod = value!;
                            _showContainer = true;
                          });
                        },
                        activeColor: const Color.fromARGB(255, 0, 116, 4),
                      ),
                      AnimatedBuilder(
                        animation: _animation,
                        builder: (context, child) {
                          return Text(
                            'Khalti',
                            style: TextStyle(
                              fontSize: maxFontSize,
                              fontWeight: _paymentMethod == 1
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                AnimatedOpacity(
                  opacity: _showContainer ? 1.0 : 0.0,
                  duration: Duration(milliseconds: 300),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    margin: EdgeInsets.only(top: 16.0),
                    color: Colors.grey[200],
                    child: Text(
                      'Payment container for Khalti',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}