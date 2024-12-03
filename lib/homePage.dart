import 'package:facebook_assignment_2/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "homePage";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Facebook", style: TextStyle(color: Colors.lightBlue, fontSize: 30, fontWeight: FontWeight.bold),),
          actions: [
            Icon(Icons.add_circle, color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.search, color: Colors.black,),
            SizedBox(width: 10,),
            Icon(Icons.message, color: Colors.black,),
            SizedBox(width: 10,),
          ],
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        for (int i = 0; i < 10; i++)
                          Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 7, left: 8),
                                height: 150,
                                width: 100,
                                decoration: BoxDecoration(
                                    // color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/facebookStory.jpg"),
                                      fit: BoxFit.cover,
                                    )),
                                child: Padding(
                                  child: Text(
                                    "Owner$i",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                  padding: EdgeInsets.only(top: 130, left: 29),
                                ),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(top: 14, left: 15),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Icon(color: Colors.white, Icons.person),
                              )
                            ],
                          ),
                        SizedBox(
                          width: 8,
                        )
                      ],
                    ),
                  ),
                  for (int i = 0; i < 10; i++)
                    Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))),
                              child: Icon(Icons.person,
                                  color: Colors.white, size: 40),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              children: [
                                Container(
                                  width: 70,
                                  height: 18,
                                  child: Text(
                                    "Owner$i",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800),
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Container(
                                    height: 15,
                                    width: 70,
                                    child: Row(
                                      children: [
                                        Text(" ${i}h"),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Icon(
                                          Icons.public,
                                          size: 17,
                                        )
                                      ],
                                    ))
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          child: Text(
                            "My Post",
                            style: TextStyle(fontSize: 25),
                          ),
                          padding: EdgeInsets.only(right: 295),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Text("10${i}"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            Container(
                              width: 60,
                              height: 23,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/like.jpg"))),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Text("100 Comments")
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 2,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 0,
                            ),
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/singleLike.jpg"))),
                            ),
                            Container(
                              child: Text(
                                "Like",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: 47,
                            ),
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/comment.jpg"))),
                            ),
                            Container(
                              child: Text(
                                "Comment",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              width: 35,
                            ),
                            Container(
                              width: 50,
                              height: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/share.png"))),
                            ),
                            Container(
                              child: Text(
                                "Share",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w500),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Divider(
                          height: 0,
                          color: Colors.black45,
                        ),
                      ],
                    ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}