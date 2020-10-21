import 'package:flutter/material.dart';

class CaptainViceCaptainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CaptainViceCaptainScreenState();
}

class CaptainViceCaptainScreenState extends State<CaptainViceCaptainScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              color: Colors.deepPurple,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Choose your Captain and Vice Captain",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.transparent,
                          child: Text(
                            "C",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "gets 2x points",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Colors.transparent,
                          child: Text(
                            "C",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "gets 2x points",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Wicket - Keeper",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 20,
                            horizontal: 30,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 0,
                                blurRadius: 10,
                                offset: Offset(0,5),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Dinesh Karthik",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        "ND - WK",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Text("0.0"),
                                  SizedBox(
                                    width: 25,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.transparent,
                                      child: Text(
                                        "C",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(30)),
                                    ),
                                    child: CircleAvatar(
                                      radius: 12,
                                      backgroundColor: Colors.transparent,
                                      child: Text(
                                        "C",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            backgroundImage:
                            AssetImage("assets/images/ic_dummy_cricketers.png"),
                          ),
                        ),
                      ),
                    ]),
                  );
                },),
            ),
          ],
        ),
      ),
    );
  }

}