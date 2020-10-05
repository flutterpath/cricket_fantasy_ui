import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class VerifyPanCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VerifyPanCardState();

}

class VerifyPanCardState extends State<VerifyPanCard> {

  File imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [

          SizedBox(height: 20,),

          Container(
            width: MediaQuery.of(context).size.width-20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey[200], spreadRadius: 2),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Text(uploadPanProof.toUpperCase(), style: TextStyle(fontSize: 20, color: AppColors.colorPrimary, fontWeight: FontWeight.bold),),

                  SizedBox(height: 10,),

                  GestureDetector(
                      child: SvgPicture.asset(AppImages.iconSvgUpload, height: 60, width: 60, color: AppColors.colorPrimary,),
                    onTap: () {
                      _showSelectionDialog(context);
                    },
                  ),

                  SizedBox(height: 20,),

                  DottedBorder(
                    color: AppColors.colorPrimary,
                    borderType: BorderType.RRect,
                    padding: EdgeInsets.all(6),
                    dashPattern: [8, 4],
                    strokeWidth: 2,
                    child: Container(
                      height: 100,
                      width: 150,
                      padding: EdgeInsets.all(10),
                      child: imageFile != null && imageFile.path != null ? Image.file(imageFile, height: 80, width: 130,) : Icon(Icons.image, size: 80, color: AppColors.colorPrimary,),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                          suffixIcon: Icon(Icons.credit_card, size: 20,),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          labelText:pancardNumber
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      keyboardType: TextInputType.name,
                      style: TextStyle(fontSize: 15),
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0),
                          suffixIcon: Icon(Icons.person, size: 20,),
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                          labelText:pancardName
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }

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
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

  void _openCamera(BuildContext context) async {
    var picture = await ImagePicker.pickImage(source: ImageSource.camera);
    this.setState(() {
      imageFile = picture;
    });
    Navigator.of(context).pop();
  }

}