// ignore_for_file: unused_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:travel_app/misc/colors.dart';
import 'package:travel_app/widgets/buttons.dart';
import 'package:travel_app/widgets/widgets.dart';
import 'package:travel_app/widgets/apptextLarge.dart';
import 'package:travel_app/widgets/apptextOrdinary.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int stars = 4;
  int selected = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/mountain.jpeg"),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu,
                      size: 30,
                    ),
                    color: AppColors.buttonBackground,
                  ),
                  // IconButton(
                  //     onPressed: () {},
                  //     icon: Icon(Icons.menu_open),
                  //     color: AppColors.buttonBackground)
                ],
              ),
            ),
            Positioned(
              top: 320,
              child: Container(
                padding: EdgeInsets.only(
                  left: 20,
                  top: 30,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Yosmite",
                          size: 25,
                          color: Colors.black54.withOpacity(0.8),
                        ),
                        AppLargeText(
                          text: "\$250",
                          size: 25,
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        AppTextOrdinary(text: "USA, Califonia")
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => Icon(
                                    Icons.star,
                                    color: index < stars
                                        ? AppColors.starColor
                                        : AppColors.textColor2,
                                  )),
                        ),
                        AppTextOrdinary(
                          text: "(4.0)",
                          color: AppColors.textColor2,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    AppLargeText(
                      text: "People",
                      size: 20,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AppTextOrdinary(
                      text: "Number of people in your group",
                      color: AppColors.mainTextColor,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      spacing: 10,
                      children: List.generate(
                        5,
                        (index) => InkWell(
                          onTap: () {
                            setState(() {
                              selected = index;
                            });
                          },
                          child: DesignedBox(
                            backgroundColor: selected == index
                                ? Colors.black
                                : AppColors.buttonBackground,
                            borderColor: AppColors.buttonBackground,
                            color:
                                selected == index ? Colors.white : Colors.black,
                            size: 50,
                            // isIcon: true,
                            text: (index + 1).toString(),
                            // icon: Icons.ac_unit,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 26),
                    SizedBox(height: 10),
                    AppTextOrdinary(
                        text:
                            "You must go for a travel. Travelling helps to get rid of pressure. Go to the mountain to see nature",
                        color: AppColors.mainTextColor),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                children: [
                  DesignedBox(
                      backgroundColor: Colors.white,
                      borderColor: AppColors.mainColor,
                      color: Colors.black,
                      size: 60,
                      isIcon: true,
                      icon: Icons.favorite_border_outlined),
                  SizedBox(
                    width: 20,
                  ),
                  WelcomeButton(
                    isResponsive: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
