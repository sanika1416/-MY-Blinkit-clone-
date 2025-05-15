import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var data = [
    {"img": "image 50.png", "text": "Lights, Diyas \n & Candles"},
    {"img": "image 51.png", "text": "Diwali Gifts"},
    {"img": "image 52.png", "text": "Appliances & Gadgets"},
    {"img": "image 53.png", "text": "Home & Living"},
  ];

  var category = [
    {"img": "image 54.png", "text": "Golden Glass \nWooden Lid Candle (Oudh)"},
    {"img": "image 63.png", "text": "Bikaji \nBhujia"},
    {"img": "image 57.png", "text": "Royal Gulab Jamun \nBy Bikano"},
  ];

  var grocerykitchen = [
    {"img": "vegetables.png", "text": "Vegetables & \nFruits"},
    {"img": "atta.png", "text": "Atta, Dal &\nRice"},
    {"img": "oil.png", "text": "Oil, Ghee &\nMasala"},
    {"img": "dairy.png", "text": "Dairy, Bread &\nMilk"},
    {"img": "biscuit.png", "text": "Biscuits &\nBakery"},
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
                color: Color(0XFFEC0505),
                child: Column(
                  children: [
                    SizedBox(height: 30, width: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: "Blinkit in",
                          color: Color(0XFFFFFFFF),
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
                          color: Color(0XFFFFFFFF),
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
                          color: Color(0XFFFFFFFF),
                          fontweight: FontWeight.bold,
                          fontsize: 14,
                        ),
                        UiHelper.CustomText(
                          text: " - Om Joshi, Mantri Colony, Islampur",
                          color: Color(0XFFFFFFFF),
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
                  backgroundColor: Colors.black,
                  child: Icon(Icons.person, color: Colors.white, size: 20),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 35,
                child: UiHelper.CustomTextField(controller: searchController),
              ),
            ],
          ),

          Container(height: 1, width: double.infinity, color: Colors.white),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0XFFEC0505),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment
                          .spaceEvenly, //Equally space distribution
                  children: [
                    UiHelper.CustomImage(img: "image 60.png"),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomText(
                      text: "Mega Diwali Sale",
                      color: Colors.white,
                      fontweight: FontWeight.bold,
                      fontsize: 20,
                      fontfamily: "bold",
                    ),
                    UiHelper.CustomImage(img: "image 55.png"),
                    UiHelper.CustomImage(img: "image 60.png"),
                  ],
                ),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                            right: 5,
                            top: 1,
                            bottom: 1,
                          ),
                          child: Container(
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(
                              color: Color(0XFFEAD3D3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.CustomText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontweight: FontWeight.bold,
                                  fontsize: 10,
                                ),
                                UiHelper.CustomImage(
                                  img: data[index]["img"].toString(),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          clipBehavior: Clip.antiAlias,
                          height: 108,
                          width: 93,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: UiHelper.CustomImage(
                            img: category[index]["img"].toString(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: UiHelper.CustomText(
                          text: category[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.bold,
                          fontsize: 8,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Row(
                          children:[
                        UiHelper.CustomImage(img: "timer 1.png"),
                        UiHelper.CustomText(text: "16 MINS", color: Color(0XFF9C9C9C), fontweight: FontWeight.bold, fontsize: 10)
                        ]
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: const EdgeInsets.only(right: 60),
                        child: Row(children: [
                          UiHelper.CustomImage(img: "Rupee.png"),
                          UiHelper.CustomText(text: "89", color: Colors.black, fontweight: FontWeight.bold, fontsize: 15)
                        ],),
                      )
                    ],
                  );
                },
                itemCount: category.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
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
          Expanded(
            flex: 1,
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
        ],
      ),
    );
  }
}
