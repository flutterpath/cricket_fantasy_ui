import 'package:fantasy_app/constants/color_constants.dart';
import 'package:fantasy_app/constants/images_constants.dart';
import 'package:fantasy_app/models/player_item_model.dart';
import 'package:flutter/material.dart';

class PlayerListBuilder extends StatefulWidget {

  List<PlayerItemModel> playersList = new List();

  PlayerListBuilder(this.playersList);

  @override
  State<StatefulWidget> createState() => PlayerListBuilderState();
}

class PlayerListBuilderState extends State<PlayerListBuilder> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.playersList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 90,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 50, right: 20),
                      padding: EdgeInsets.only(left: 30, top: 5, bottom: 5, right: 15),
                      height: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: AppColors.colorWhite,
                          boxShadow: [
                            BoxShadow(color: AppColors.colorGreyExtraLight, spreadRadius: 1, blurRadius: 5)
                          ]
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.playersList[index].playerName,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.colorBlack,
                                      fontFamily: 'Raleway'
                                  ),
                                ),
                                SizedBox(height: 4,),
                                Text(
                                  "${widget.playersList[index].country} (${widget.playersList[index].playerType})",
                                  style: TextStyle(fontSize: 12.0, color: AppColors.colorGrey, fontFamily: 'Raleway', fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            margin: const EdgeInsets.all(2),
                            padding: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                                color: AppColors.colorPrimaryLight,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(text: 'Points- '.toUpperCase(), style: TextStyle(color: AppColors.colorGreyDark, fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Raleway')),
                                      TextSpan(text: '${widget.playersList[index].points}'.toUpperCase(), style: TextStyle(color: AppColors.colorBlack, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Raleway')),
                                    ]
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(2),
                            padding: EdgeInsets.only(left: 5, right: 5),
                            decoration: BoxDecoration(
                                color: AppColors.colorPrimaryLight,
                                borderRadius: BorderRadius.all(Radius.circular(10))
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: RichText(
                                text: TextSpan(
                                    children: [
                                      TextSpan(text: 'Credits- '.toUpperCase(), style: TextStyle(color: AppColors.colorGreyDark, fontSize: 11, fontWeight: FontWeight.w500, fontFamily: 'Raleway')),
                                      TextSpan(text: '${widget.playersList[index].credits}'.toUpperCase(), style: TextStyle(color: AppColors.colorBlack, fontSize: 15, fontWeight: FontWeight.bold, fontFamily: 'Raleway')),
                                    ]
                                ),
                              ),
                            ),
                          )

                        ],
                      ),
                    ),

                    Positioned(
                      left: 0,
                      child: Stack(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(40)),
                                color: AppColors.colorWhite,
                                boxShadow: [
                                  BoxShadow(color: AppColors.colorGreyLight, spreadRadius: 1, blurRadius: 5)
                                ]
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage(AppImages.userAvatar),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: widget.playersList[index].playingStatus
                                ? CircleAvatar(backgroundColor: AppColors.colorGreen, radius: 6,)
                                : CircleAvatar(backgroundColor: AppColors.colorRedDark, radius: 6,),
                          )
                        ],
                      ),
                    ),

                    Positioned(
                      right: 0,
                      child: widget.playersList[index].isSelected
                          ? IconButton(icon: Icon(Icons.remove_circle, color: AppColors.colorRedDark, size: 25,), onPressed: () {},)
                          : IconButton(icon: Icon(Icons.add_circle, color: AppColors.colorGreyDark, size: 25,), onPressed: () {},),
                    )

                  ],
                ),
              ),
              index==(widget.playersList.length-1) ? Container(height: 60,) : Container(height: 0,),
            ],
          );
        }
        );
  }

}