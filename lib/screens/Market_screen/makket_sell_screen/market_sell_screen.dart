import 'dart:io';
import 'package:flutter/material.dart';
import 'market_sell_buttom_pop_screen.dart';

class MarketSellForm extends StatefulWidget {
  @override
  _MarketSellFormState createState() => _MarketSellFormState();
}

class _MarketSellFormState extends State<MarketSellForm> {
  String? selectedCategory;
  String? productName;
  String? priceTo;
  String? priceFrom;
  String? selectedUnitTo;
  String? selectedUnitFrom;
  String? quantity;
  DateTime? selectedDate;
  String? quality;
  String? imagePath;

  final List<String> categories = ['Fruit', 'Vegetables'];
  final List<String> units = ['Kg', 'Gota'];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        // _showImagePicker();
      },
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select a Category:',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              SizedBox(height: 5.0),
              Container(height: 60,
                child: DropdownButtonFormField(
                  value: selectedCategory,
                  onChanged: (value) {
                    setState(() {
                      selectedCategory = value as String?;
                    });
                  },
                  items: categories.map((category) {
                    return DropdownMenuItem(
                      value: category,
                      child: Text(category),
                    );
                  }).toList(),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Select Category',
                      fillColor: Color.fromARGB(0, 5, 5, 5)),
                ),
              ),
              SizedBox(height: 11.0),
              Text(
                'Product Name:',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 8.0),
              Container(height: 55,
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      productName = value;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Product Name',
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price :',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 8.0),
                        Container(height: 55,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                priceFrom = value;
                              });
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'To:',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 8.0),
                        Container(height: 55,
                          child: TextFormField(
                            onChanged: (value) {
                              setState(() {
                                priceTo = value;
                              });
                            },
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 16.0),
                  Flexible(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Per:',
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(height: 8.0),
                        DropdownButtonFormField(
                          value: selectedUnitFrom,
                          onChanged: (value) {
                            setState(() {
                              selectedUnitFrom = value as String?;
                            });
                          },
                          items: units.map((unit) {
                            return DropdownMenuItem(
                              value: unit,
                              child: Text(unit),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Select Unit',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Quantity:',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    quantity = value;
                  });
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: ' Quantity',
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Date:',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 8.0),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 5, 5),
                    child: InkWell(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2101),
                        );
        
                        if (pickedDate != null && pickedDate != selectedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedDate == null
                                  ? 'Select Date'
                                  : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.calendar_today),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "To",
                    style: TextStyle(fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(7, 10, 0, 5),
                    child: InkWell(
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2101),
                        );
        
                        if (pickedDate != null && pickedDate != selectedDate) {
                          setState(() {
                            selectedDate = pickedDate;
                          });
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              selectedDate == null
                                  ? 'Select Date'
                                  : '${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}',
                              style: TextStyle(fontSize: 15.0),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.calendar_today),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              Text(
                'Quality:',
                style: TextStyle(fontSize: 18.0),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          image: imagePath != null
                              ? DecorationImage(
                                  image: FileImage(File(imagePath!)),
                                  fit: BoxFit.cover,
                                )
                              : null,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      if (imagePath == null)
                        Positioned.fill(
                          child: InkWell(
                            onTap: () {
                              _showImagePicker();
                            },
                            child: Icon(
                              Icons.camera_alt,
                              size: 70,
                              color: Color.fromARGB(255, 7, 12, 17),
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Material(
                child: Container(
                  height: 48,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 2, 141, 7),
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showImagePicker() {
    showBottomSheet(
      context: context,
      builder: (builder) => BottomSheetWidget(updateImagePath),
    );
  }

  void updateImagePath(String newImagePath) {
    setState(() {
      imagePath = newImagePath;
    });
  }
}
