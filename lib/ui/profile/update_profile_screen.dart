import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/constants/strings.dart';
import 'package:fantasy_app/ui/wallet/withdraw_screen.dart';
import 'package:fantasy_app/widgets/custom_app_bar.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class UpdateProfileScreen extends StatefulWidget {

  @override
  _UpdateProfile createState() => _UpdateProfile();
}

class _UpdateProfile extends State<UpdateProfileScreen> {

  TextEditingController controllerPanNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: CustomPaint(
          painter: ProfileHeaderContainer(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Container(
                child: MyCustomAppBar().getTransparentAppBarWithTitle(update_profile, Icons.arrow_back_ios),
              ),

              SizedBox(height: 20.0,),

              Container(
                //color: Colors.orange,
                height: MediaQuery.of(context).size.height/6,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Stack(
                  children: <Widget>[

                    Stack(
                      children: [
                        AppWidgets.getCircularAvatarWithBorder(100, AppImages.userAvatar),
                        Positioned(
                          bottom: 5,
                          right: 5,
                          child: CircleAvatar(
                            backgroundColor: AppColors.colorSecondary,
                            radius: 12,
                            child: InkWell(onTap: (){}, child: Icon(Icons.edit, color: AppColors.colorWhite, size: 15,)),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: <Widget>[

                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(team_name, TextInputType.name, Icons.group, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(name, TextInputType.name, Icons.person, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(email, TextInputType.emailAddress, Icons.email, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(mobile_number, TextInputType.number, Icons.phone_iphone, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(date_of_birth, TextInputType.name, Icons.all_inclusive, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(gender, TextInputType.name, Icons.ac_unit, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(city, TextInputType.name, Icons.location_city, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: AppWidgets.getTextFieldFloatLabelWithInBorder(state, TextInputType.name, Icons.location_on, controllerPanNumber),
                    ),

                    SizedBox(height: 20,),

                    Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: Container(
                        padding: EdgeInsets.only(top: 15, bottom: 15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          gradient: new LinearGradient(
                              colors: [
                                AppColors.colorPrimary,
                                AppColors.colorGradient,
                                AppColors.colorSecondary,
                              ],
                              begin: const FractionalOffset(0.0, 0.0),
                              end: const FractionalOffset(1.0, 0.0),
                              stops: [0.0, 0.7, 1.0],
                              tileMode: TileMode.clamp),
                        ),
                        child: Text(update.toUpperCase(), textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Raleway', color: AppColors.colorWhite, fontWeight: FontWeight.bold),),
                      ),
                    ),

                    SizedBox(height: 20,),

                  ],
                ),
              ),

            ],
          ),
        ),

      ),
    );
  }
}

class ProfileHeaderContainer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = AppColors.colorSecondary;
    Path path = Path()
      ..relativeLineTo(0, 80)
      ..quadraticBezierTo(size.width / 2, 180.0, size.width, 120)
      ..relativeLineTo(0, -150)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}