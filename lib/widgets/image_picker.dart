import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerDialog {

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("From where do you want to take the photo?"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text("Gallery"),
                      onTap: () {
                        _openGallery(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Text("Camera"),
                      onTap: () {
                        _openCamera(context);
                      },
                    )
                  ],
                ),
              ));
        });
  }

  void _openGallery(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.gallery);
//    this.setState(() {
//      imageFile = picture;
//    });
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
//    this.setState(() {
//      imageFile = picture;
//    });
    Navigator.of(context).pop();
  }

}