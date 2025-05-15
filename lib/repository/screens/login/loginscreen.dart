import 'package:blinkit/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            UiHelper.CustomImage(img: "Blinkit Onboarding Screen.png"),
            SizedBox(height: 30),
            UiHelper.CustomImage(img: "Blinkit logo.png"),
            SizedBox(height: 20),
            UiHelper.CustomText(
              text: "India's last minute app",
              color: Color(0XFF000000),
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold",
            ),
            SizedBox(height: 20),
              Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0XFFFFFFFF),
                  ),
                  child: Column(children: [
                    SizedBox(height: 20,),
                    SizedBox(height: 48, width: 295,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavScreen()));
                    },style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFFE23744),
                      shape: RoundedRectangleBorder(

                        borderRadius: BorderRadius.circular(10)
                      )
                    ), child: Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                      UiHelper.CustomText(text: "Login with   ", color: Color(0XFFFFFFFF), fontweight: FontWeight.bold, fontsize: 14, fontfamily: "bold"),

                      UiHelper.CustomImage(img: "Zomato text.png"),

                      ],)),

                    ),
                    SizedBox(height: 8,),
                    UiHelper.CustomText(text: "Access your saved addresses from Zomato automatically!", color: Color(0XFF9C9C9C), fontweight: FontWeight.normal, fontsize: 10),
                    SizedBox(height: 30,),
                    UiHelper.CustomText(text: "Or login with phone number", color: Color(0XFF269237), fontweight: FontWeight.normal, fontsize: 14)
                  ],),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
