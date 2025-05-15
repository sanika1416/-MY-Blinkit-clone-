import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30, width: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 15,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "16 Minutes",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 20,
                          fontfamily: "bold",
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "HOME",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        UiHelper.CustomText(
                          text: " - Om Joshi, Mantri Colony, Islampur",
                          color: Color(0XFF000000),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 10,
                bottom: 120,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 20),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 35,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),
          SizedBox(height: 20),
          SizedBox(height: 20),
          UiHelper.CustomImage(img: "cart.png"),
          SizedBox(height: 20),
          UiHelper.CustomText(
            text: "Reordering will be easy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 16,
          ),
          UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          UiHelper.CustomText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontweight: FontWeight.bold,
            fontsize: 12,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Best Sellers",
                color: Color(0XFF000000),
                fontweight: FontWeight.bold,
                fontsize: 16,
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "milk.png"),
                      Positioned(
                        top: 95,
                        left: 65,
                        child: UiHelper.CustomButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                    text: "Milk",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 12,
                  ),
                  UiHelper.CustomText(text: "16 Minutes", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14),
                  UiHelper.CustomText(text: "Rs. 60", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize:18),
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "potato.png"),
                      Positioned(
                        top: 95,
                        left: 65,
                        child: UiHelper.CustomButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                    text: "Potato (Aloo)",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 12,
                  ),
                  UiHelper.CustomText(text: "16 Minutes", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14),
                  UiHelper.CustomText(text: "Rs. 60", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize:18),
                ],
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "tomato.png"),
                      Positioned(
                        top: 95,
                        left: 65,
                        child: UiHelper.CustomButton(() {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  UiHelper.CustomText(
                    text: "Tomato",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 12,
                  ),
                  UiHelper.CustomText(text: "16 Minutes", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize: 14),
                  UiHelper.CustomText(text: "Rs. 60", color: Color(0XFF000000), fontweight: FontWeight.bold, fontsize:18),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
