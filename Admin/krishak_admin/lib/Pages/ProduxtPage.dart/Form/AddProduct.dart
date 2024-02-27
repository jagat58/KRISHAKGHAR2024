import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddProducts extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProducts> {
  TextEditingController _productNameController = TextEditingController();
  TextEditingController _productRateController = TextEditingController();
  TextEditingController _productQuantityController = TextEditingController();
  TextEditingController _productCategoryController =
      TextEditingController(); // New controller for Product Category
  File? _image;
  String? _selectedCategory;

  Future<void> _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  Future<void> _takePhoto() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _productNameController,
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'Product Name',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _productRateController,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'Product Rate',
                  prefixText: 'Rs .',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                controller: _productQuantityController,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold),
                decoration: InputDecoration(
                  labelText: 'Product Quantity',
                  suffixText: "Kg",
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                decoration: InputDecoration(
                  labelText: 'Product Category',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
                items: <String>[
                  'Seeds',
                  'Agrochemical',
                  'Chemical Fertilizer',
                  'Hardware',
                  'Organic Fertilizer'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    _selectedCategory = value;
                  });
                },
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return SafeArea(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.photo_library,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                              title: Text('Choose from Gallery',
                                  style: TextStyle(color: Colors.black)),
                              onTap: () {
                                Navigator.pop(context);
                                _getImageFromGallery();
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.camera_alt,
                                  color: const Color.fromARGB(255, 0, 0, 0)),
                              title: Text('Take a Photo',
                                  style: TextStyle(color: Colors.black)),
                              onTap: () {
                                Navigator.pop(context);
                                _takePhoto();
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Container(
                  height: 150,
                  width: 150,
                  padding: EdgeInsets.all(30.0),
                  child: Icon(Icons.camera_enhance,
                      color: const Color.fromARGB(255, 0, 0, 0), size: 60),
                ),
              ),
              SizedBox(height: 10),
              _image != null
                  ? Image.file(
                      _image!,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    )
                  : Container(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                child:
                    Text('Save Product', style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.black),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
