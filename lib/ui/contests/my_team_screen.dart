import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTeamScreen extends StatefulWidget {

  @override
  MyTeamScreenState createState() => MyTeamScreenState();
}

class MyTeamScreenState extends State<MyTeamScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),

        title: Text(
          "My Teams",
          textDirection: TextDirection.ltr,
          softWrap: true,
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,

      ),

      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: <Widget>[

          InkWell(
            onTap: (){

              Navigator.push(
                context,
                PageRouteBuilder(
                  transitionDuration: Duration(seconds: 1),
                  transitionsBuilder: (
                      BuildContext context,
                      Animation<double> animation,
                      Animation<double>
                      secAnimation,
                      Widget child, ) {
                    animation = CurvedAnimation(parent: animation, curve: Curves.bounceInOut);

                    return ScaleTransition(
                      alignment: Alignment.topCenter,
                      child: child,
                      scale: animation,
                    );
                  },

                  pageBuilder: (BuildContext context,
                      Animation<double> animation,
                      Animation<double> secAnimation) {
//                    return Contests();
                    return null;
                  },
                ),
              );

            },
            child: Container(
              height: MediaQuery.of(context).size.height/12,
              width: MediaQuery.of(context).size.width,
              child: Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[

                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                      //color: Colors.red,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Row(
                        textDirection: TextDirection.ltr,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/south-africa.png"),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "SA",
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "vs",
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "IND",
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/india.png"),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      //color: Colors.green,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Text(
                        "Mon, 9 Sep",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black45,
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),

          Divider(
            thickness: 2,
            color: Colors.grey[400],
          ),

          Container(
            alignment: Alignment.center,
            //color: Colors.red,
            height: MediaQuery.of(context).size.height/3.8,
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              textDirection: TextDirection.ltr,
              children: <Widget>[

                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    //color: Colors.orange,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textDirection: TextDirection.ltr,
                      children: <Widget>[

                        Expanded(
                          child: Container(
                            alignment: Alignment.topLeft,
                            //color: Colors.red,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Oliver Smith(π)",
                              textDirection: TextDirection.ltr,
                              softWrap: true,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            alignment: Alignment.topRight,
                            //color: Colors.orange,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                IconButton(
                                  icon: Icon(Icons.edit),
                                  onPressed: (){},
                                ),

                                IconButton(
                                  icon: Icon(Icons.content_copy),
                                  onPressed: (){},
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Container(
                      alignment: Alignment.center,
                      //color: Colors.green,
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: <Widget>[

                          Expanded(
                            child: Container(
                              //color: Colors.red,
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.center,
                                      //color: Colors.pink,
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[

                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              "SA",
                                              textDirection: TextDirection.ltr,
                                              textAlign: TextAlign.right,
                                              softWrap: true,
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black45,
                                              ),
                                            ),
                                          ),

                                          SizedBox(height: 4.0,),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Text(
                                              "5",
                                              textDirection: TextDirection.ltr,
                                              textAlign: TextAlign.right,
                                              softWrap: true,
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),

                                  Expanded(
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      //color: Colors.pinkAccent,
                                      padding: const EdgeInsets.all(8.0),
                                      child:  Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[

                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: Text(
                                              "IND",
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

                                          SizedBox(height: 4.0,),

                                          Padding(
                                            padding: const EdgeInsets.only(right: 8.0),
                                            child: Text(
                                              "4",
                                              textDirection: TextDirection.ltr,
                                              textAlign: TextAlign.center,
                                              softWrap: true,
                                              style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),

                                        ],
                                      ),
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Expanded(
                            child: Container(
                              //color: Colors.green,
                              alignment: Alignment.centerRight,
                              height: MediaQuery.of(context).size.height,
                              width: MediaQuery.of(context).size.width,
                              child: Image.asset(
                                "assets/cricket-player.png",
                                fit: BoxFit.contain,
                                height: 80,
                                width: 80,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    //color: Colors.orange,
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[

                        Expanded(
                          child: Container(
                            //color: Colors.grey,
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[

                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "WK",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.orange,
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "1",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            //color: Colors.grey,
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[

                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "BAT",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.orange,
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "4",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            //color: Colors.grey,
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[

                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "All",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.orange,
                                    alignment: Alignment.center,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "3",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                        Expanded(
                          child: Container(
                            //color: Colors.grey,
                            alignment: Alignment.centerLeft,
                            height: MediaQuery.of(context).size.height,
                            width: MediaQuery.of(context).size.width,
                            child: Row(
                              children: <Widget>[

                                Expanded(
                                  flex: 3,
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerRight,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "BOWL",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black26,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.orange,
                                    alignment: Alignment.centerRight,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Text(
                                      "3",
                                      textAlign: TextAlign.left,
                                      softWrap: true,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),

                                Expanded(
                                  child: Container(
                                    //color: Colors.red,
                                    alignment: Alignment.centerLeft,
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),

          Divider(
            thickness: 2,
            color: Colors.grey[400],
          ),

        ],
      ),

    );
  }
}