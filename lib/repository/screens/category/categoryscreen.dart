import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../widgets/uihelper.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var grocerykitchen = [
    {"img": "vegetables.png", "text": "Vegetables & \nFruits"},
    {"img": "atta.png", "text": "Atta, Dal &\nRice"},
    {"img": "oil.png", "text": "Oil, Ghee &\nMasala"},
    {"img": "dairy.png", "text": "Dairy, Bread &\nMilk"},
    {"img": "biscuit.png", "text": "Biscuits &\nBakery"},
  ];

  var secondgrocerykitchen = [
    {"img": "dry.png", "text": "Dry Fruits &\nCereals"},
    {"img": "kitchen.png", "text": "Kitchen &\nAppliances"},
    {"img": "tea.png", "text": "Tea &\nCoffees"},
    {"img": "ice.png", "text": "Ice Creams &\nmuch more"},
    {"img": "noodles.png", "text": "Noodles &\nPacket Food"},
  ];

  var snacksanddrinks = [
    {"img": "chips.png", "text": "Chips &\nNamkeens"},
    {"img": "sweets.png", "text": "Sweets &\nChocalates"},
    {"img": "drinks.png", "text": "Drinks &\nJuices"},
    {"img": "sauces.png", "text": "Sauces &\nSpreads"},
    {"img": "beauty.png", "text": "Beauty &\nCosmetics"},
  ];

  var household = [
  {"img": "surf.png", "text": ""},
  {"img": "skin.png", "text": ""},
  {"img": "black.png", "text": ""},
  {"img": "sofa.png", "text": ""},
  {"img": "wash.png", "text": ""},
  ];
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
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Grocery & Kitchen",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                            img: grocerykitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: grocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: grocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                            img: secondgrocerykitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: secondgrocerykitchen[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: secondgrocerykitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: "Snacks & Drinks",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 14,
                fontfamily: "bold",
              ),



            ],
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                            img: snacksanddrinks[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: snacksanddrinks[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                            img: household[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                        text: household[index]["text"].toString(),
                        color: Colors.black,
                        fontweight: FontWeight.normal,
                        fontsize: 10,
                      ),
                    ],
                  );
                },
                itemCount: household.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
