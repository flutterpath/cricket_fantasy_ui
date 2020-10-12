import 'package:flutter/material.dart';

class ContestScreen extends StatefulWidget {
  @override
  _ContestScreenState createState() => _ContestScreenState();
}

class _ContestScreenState extends State<ContestScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple[50],
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 90,
                color: Colors.white,
                padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Container(
                          width: 120,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/images/india.jpg'),
                              ),
                              SizedBox(width: 5,),

                              Text("SA", textScaleFactor: 0.8, style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),

                              Text("VS", textScaleFactor: 0.7, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                              SizedBox(width: 5,),

                              Text("SA", textScaleFactor: 0.8, style: TextStyle(fontWeight: FontWeight.bold),),
                              SizedBox(width: 5,),

                              CircleAvatar(
                                radius: 10,
                                backgroundImage: AssetImage('assets/images/india.jpg'),
                              ),
                            ],
                          )
                        ),

                        Text("Mon, 9 Sep", textScaleFactor: 0.8, style: TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height*0.04,
                          width: MediaQuery.of(context).size.width*0.45,
                          child: RaisedButton(
                            textColor: Colors.blue,
                            color: Colors.white,
                            child: Text("Enter Contest Code", textScaleFactor: 0.7,),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),

                        Container(
                          height: MediaQuery.of(context).size.height*0.04,
                          width: MediaQuery.of(context).size.width*0.45,
                          child: RaisedButton(
                            textColor: Colors.blue,
                            color: Colors.white,
                            child: Text("Create a Contest", textScaleFactor: 0.7,),
                            onPressed: () {},
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
                child: Text("Contest Number 0", style: TextStyle(fontWeight: FontWeight.bold),),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                child: Text("The Ultimate Face Off", textScaleFactor: 0.8, style: TextStyle(color: Colors.deepPurple),),
              ),

              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 250,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Prize Pool", textScaleFactor: 0.8, style: TextStyle(color: Colors.grey),),

                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Text("Winners", textScaleFactor: 0.8, style: TextStyle(color: Colors.grey)),
                              ),

                              Text("Entry", textScaleFactor: 0.8, style: TextStyle(color: Colors.grey))
                            ],
                          ),
                          SizedBox(height: 2),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("1000", textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.bold),),

                              Text("1", textScaleFactor: 1.1, style: TextStyle(fontWeight: FontWeight.bold)),

                              Container(
                                height: 20,
                                width: 60,

                                // decoration: BoxDecoration(
                                //   `borderRadius: BorderRadius.circular(10),`  // radius of 10
                                //   color: Colors.deepPurpleAccent, // green as background color
                                // ),
                                child: RaisedButton(
                                  color: Colors.deepPurpleAccent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  padding: EdgeInsets.zero,
                                  child: Text("575", style: TextStyle(color: Colors.white),),
                                  onPressed: (){}
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 2,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("2 spot left", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange), textScaleFactor: 0.9,),

                              Text("1 spot", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.orange), textScaleFactor: 0.9)
                            ],
                          ),

                          Divider(thickness: 1,)
                        ],
                      ),
                    );
                  }
                ),
              )

            ],
          ),
        ),

        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ButtonTheme(
              height: 30,
              minWidth: 250,
              buttonColor: Colors.deepPurpleAccent,
              child: RaisedButton(
                // color: Colors.deepPurpleAccent,
                child: Text("CREATE TEAM", style: TextStyle(color: Colors.white), textScaleFactor: 0.9,),
                onPressed: (){}
              ),
            ),
          ],
        ),
      ),
    );
  }
}
