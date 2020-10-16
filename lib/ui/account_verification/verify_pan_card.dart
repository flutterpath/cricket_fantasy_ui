import 'dart:io';

import 'package:dotted_border/dotted_border.dart';
import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

class VerifyPanCard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VerifyPanCardState();

}

class VerifyPanCardState extends State<VerifyPanCard> {

  TextEditingController controllerPanNumber = TextEditingController();
  TextEditingController controllerPanCardName = TextEditingController();
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: AppColors.colorPrimaryLight, spreadRadius: 2, blurRadius: 10),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(height: 20,),

                  Text(uploadPanProof.toUpperCase(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'Raleway',),),

                  SizedBox(height: 5,),

                  Container(
                      width: MediaQuery.of(context).size.width-80,
                      child: Divider(height: 1, color: AppColors.colorGreyLight,)
                  ),

                  SizedBox(height: 10,),

                  GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            color: AppColors.colorPrimaryLight,
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 20,),
                              Expanded(
                                  child: Text('Upload Photo', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Raleway',),)
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset(AppImages.iconSvgUpload, height: 35, width: 35, color: AppColors.colorPrimary,),
                              )
                            ],
                          ),
                        ),
                      ),
                    onTap: () {
                      _showSelectionDialog(context);
                    },
                  ),

                  SizedBox(height: 30,),

                  GestureDetector(
                    onTap: () {
                      _showSelectionDialog(context);
                    },
                    child: DottedBorder(
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
                  ),

                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: AppWidgets.getTextFieldFloatLabelWithInBorder(pancardNumber, TextInputType.name, FontAwesomeIcons.creditCard),
                  ),

                  SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: AppWidgets.getTextFieldFloatLabelWithInBorder(pancardName, TextInputType.name, FontAwesomeIcons.solidUser),
                  ),

                  SizedBox(height: 20,),

                  Container(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 10, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      gradient: AppWidgets.getCustomGradient(),
                    ),
                    child: Text(submit.toUpperCase(), style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                  ),

                  SizedBox(height: 20,),

                ],
              ),
            ),
          ),
        )

      ],
    );
  }

  Future<void> _showSelectionDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text("Pick your image pick option:"),
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