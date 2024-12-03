import 'package:facebook_assignment_2/homePage.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {

  static const String routeName = "Login";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xff9B6998FF),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Column(
              children: [
                SizedBox(height: 200,),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 150),
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/Facebook_Logo_(2019).png")
                    )
                  ),
                ),
                SizedBox(height: 30,),
                Container(
                  width: 330,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      hintText: " Email or Phone",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: 330,
                  child: TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      hintText: " Password",
                      hintStyle: TextStyle(
                        color: Colors.white38,
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, HomePage.routeName);
                }, child: Container(
                  width: 300,
                  height: 60,
                  child: Center(child: Text("Log In", style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180),
                  child: Text("Sign Up for Facebook", style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Text("Forgot Password?", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400
                  ),),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
