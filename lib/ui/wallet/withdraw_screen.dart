import 'package:fantasy_app/ui/contests/my_team.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WithdrawScreen extends StatefulWidget {

  @override
  WithdrawScreenState createState() => WithdrawScreenState();
}

class WithdrawScreenState extends State<WithdrawScreen> {

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);
  }

  @override
  dispose(){
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown,]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

        title: Text(
          "Withdraw",
          textDirection: TextDirection.ltr,
          softWrap: true,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.italic,
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,

      ),

      body: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: <Widget>[

          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            textDirection: TextDirection.ltr,
            children: <Widget>[

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    //color: Colors.deepPurple,
                    alignment: Alignment.centerLeft,
                    height: MediaQuery.of(context).size.height/14,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "Your Winnings",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Container(
                    //color: Colors.deepOrange,
                    alignment: Alignment.centerRight,
                    height: MediaQuery.of(context).size.height/14,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      "\$0",
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),



            ],
          ),

          Divider(
            thickness: 2,
            color: Colors.grey[400],
          ),

          Container(
            //color: Colors.orange,
            height: MediaQuery.of(context).size.height/14,
            width: MediaQuery.of(context).size.width,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                enabled: true,
                cursorColor: Theme.of(context).primaryColor,
                style: TextStyle(
                  fontSize: 18,
                ),
                decoration: InputDecoration(
                    labelText: "",
                    /*labelStyle: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.black54,
                      fontSize: 20,
                    ),*/
                    //hintText: "Add Amount",
                    prefix: Text("\$"),
                    fillColor: Colors.deepPurpleAccent
                ),
              ),
            ),
          ),

          Container(
            alignment: Alignment.centerLeft,
            //color: Colors.red,
            height: MediaQuery.of(context).size.height/22,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 10.0, ),
            child: Text(
              "min \$40 & max \$200 allowed per day",
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.left,
              softWrap: true,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.normal,
                color: Colors.black45,
              ),
            ),
          ),

          Container(
            //color: Colors.orange,
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height/9,
            width: MediaQuery.of(context).size.width,
            child: MaterialButton(
              height: 50,
              minWidth: MediaQuery.of(context).size.width*0.8,
              elevation: 6.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0),),
              ),
              child: Text(
                "ADD CASH",
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: (){
                Navigator.push(
                  context,
                  PageRouteBuilder(

                    transitionDuration: Duration(seconds: 1),
                    transitionsBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation,
                        Widget child) {
                      animation = CurvedAnimation(parent: animation, curve: Curves.bounceInOut);

                      return ScaleTransition(
                        alignment: Alignment.bottomCenter,
                        child: child,
                        scale: animation,
                      );
                    },

                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secAnimation) {
                      return MyTeam();
                    },
                  ),
                );
              },
            ),
          ),

        ],
      ),

    );
  }
}