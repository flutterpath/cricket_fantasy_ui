import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/widgets/custom_widgets.dart';
import 'package:fantasy_app/widgets/iconButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class TransactionHistoryScreen extends StatefulWidget {
  @override
  _TransactionHistoryScreenState createState() => _TransactionHistoryScreenState();
}

class _TransactionHistoryScreenState extends State<TransactionHistoryScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body:  NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              elevation: 10,
              leading: IconButton1(
                buttonColor: Colors.black,
                icon: Icons.arrow_back_ios,
                iconColor: Colors.white,
              ),
              backgroundColor: AppColors.colorPrimary,
              expandedHeight: height*0.3,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: false,
                  title: Text("Recent Transaction",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    "https://cdni.iconscout.com/illustration/premium/thumb/add-money-to-wallet-2523246-2117422.png",
                    fit: BoxFit.contain,
                  )),
            ),
          ];
        },
        body: AnimationLimiter(
          child: ListView.builder(
            padding: const EdgeInsets.all(8.0),
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 375),
                child: SlideAnimation(
                  verticalOffset: 44.0,
                  child: FadeInAnimation(
                    child: Column(
                      children: [
                          Container(
                            margin: EdgeInsets.all(5.0),
                            padding: EdgeInsets.all(20.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.0,
                                  color: Colors.grey[350],
                                  offset: Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Row(
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Stack(
                                    children: <Widget>[
                                      AppWidgets.getCircularAvatar(50, AppImages.userAvatar),
                                      // ClipRRect(
                                      //   borderRadius: BorderRadius.circular(30.0),
                                      //   child: Image.network(
                                      //     "https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_960_720.jpg",
                                      //   ),
                                      // ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          width: 15.0,
                                          height: 15.0,
                                          decoration: BoxDecoration(
                                            color: AppColors.colorPrimary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: FittedBox(
                                            child: Icon(
                                              Icons.arrow_upward,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5.0),
                                Flexible(
                                  flex: 4,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "Ram Starma",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "\$ 30",
                                            style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            "School Fees - 02 Feb, 2020",
                                            style: TextStyle(color: Colors.grey[700]),
                                          ),
                                          Text(
                                            "Sent",
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.colorPrimary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
