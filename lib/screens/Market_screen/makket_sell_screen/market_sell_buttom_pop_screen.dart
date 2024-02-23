import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BottomSheetWidget extends StatelessWidget {
  final Function(String) onUpdateImagePath;

  BottomSheetWidget(this.onUpdateImagePath);

  final ImagePicker _picker = ImagePicker();

  void _handleCameraButtonPress() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);

      if (pickedFile != null) {
        onUpdateImagePath(pickedFile.path);
      }
    } catch (e) {
      print("Error picking image from camera: $e");
    }
  }

  void _handleGalleryButtonPress() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        onUpdateImagePath(pickedFile.path);
      }
    } catch (e) {
      print("Error picking image from gallery: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 198, 230, 199),
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            "Upload your product picture",
            style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),
            
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton.icon(
                icon: Icon(Icons.camera),
                label: Text("Camera"),
                onPressed: _handleCameraButtonPress,
              ),
              TextButton.icon(
                icon: Icon(Icons.image),
                label: Text("Gallery"),
                onPressed: _handleGalleryButtonPress,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
