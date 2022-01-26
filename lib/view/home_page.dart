// ignore_for_file: prefer_const_constructors

import 'package:book_app/helper/style/container_style.dart';
import 'package:book_app/helper/style/text_style.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../helper/constant/color_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            //backImage
            child: Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/image/1.jpg"),
                  fit: BoxFit.cover,
                )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 157,
                    ),
                    //Başlık
                    HomeHead(),
                    const SizedBox(
                      height: 10,
                    ),

                    //Kitap listesi
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(
                        height: 280,
                        child: Row(
                          children: [
                            listItem("assets/image/book-1.png",
                                "Crushing & Influence", "4.9"),
                            listItem("assets/image/book-2.png", "Top 10 hack",
                                "6.9"),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),

                    // Başlık 1
                    HomeTittle(text: 'Best of the', boldText: ' day?'),
                    const SizedBox(
                      height: 10,
                    ),
                    //Best of the day
                    BestOftheDay(),
                    SizedBox(
                      height: 10,
                    ),

                    //Başlık 2
                    HomeTittle(text: "Continue ", boldText: "reading..."),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 32, bottom: 32, right: 32),
                      child: Container(
                        height: 77,
                        width: 354,
                        decoration: UIContainerStyle.instance.UIBoxDecoration,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Crushing & Influence",
                                style: UITextStyle.instance.textStyle14w700),
                            Image.asset(
                              "assets/image/book-1.png",
                              width: 50,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ))));
  }

  Widget listItem(String image, String title, String rate) {
    return Padding(
      padding: const EdgeInsets.only(left: 38.0),
      child: SizedBox(
        height: 245,
        width: 202,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 221,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 10,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              image,
              width: 150,
            ),
            Positioned(
              top: 35,
              right: 10,
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {}, icon: Icon(EvaIcons.heartOutline)),
                  RatingBar(rate: rate)
                ],
              ),
            ),
            Positioned(
                top: 160,
                child: SizedBox(
                  height: 85,
                  width: 202,
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: ColorConstant.instance.black,
                        ),
                      ),
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: 45,
                              width: 107,
                              decoration: BoxDecoration(
                                  color: ColorConstant.instance.black,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40.0),
                                      bottomRight: Radius.circular(40.0))),
                              child: Center(
                                  child: Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 15,
                              ))),
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class HomeHead extends StatelessWidget {
  const HomeHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 50.0),
      child: RichText(
        text: TextSpan(
          text: 'What are you \nreading',
          style: UITextStyle.instance.textStyle31w300,
          children: <TextSpan>[
            TextSpan(
                text: ' today?', style: UITextStyle.instance.textStyle31w700),
          ],
        ),
      ),
    );
  }
}

class HomeTittle extends StatelessWidget {
  final String text;
  final String boldText;
  const HomeTittle({Key? key, required this.text, required this.boldText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Container(
        height: 50,
        width: 200,
        decoration: UIContainerStyle.instance.UIBoxDecoration,
        child: Center(
          child: RichText(
            text: TextSpan(
              text: text,
              style: UITextStyle.instance.textStyle21w300,
              children: <TextSpan>[
                TextSpan(
                    text: boldText,
                    style: UITextStyle.instance.textStyle21w700),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BestOftheDay extends StatelessWidget {
  const BestOftheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: Container(
          height: 250,
          width: double.infinity,
          decoration: UIContainerStyle.instance.UIBoxDecorationGrey,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                    height: 185,
                    decoration: UIContainerStyle.instance.UIBoxDecorationGrey),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: Image.asset(
                  "assets/image/book-3.png",
                  width: 180,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 29.0, top: 45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "How To Win \nFriends & Influence",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    RatingBar(rate: "4.9"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            height: 45,
                            width: 107,
                            decoration: BoxDecoration(
                                color: ColorConstant.instance.black,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40.0),
                                    bottomRight: Radius.circular(40.0))),
                            child: Center(
                                child: Icon(
                              Icons.arrow_forward_ios_outlined,
                              color: Colors.white,
                              size: 15,
                            ))),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

class RatingBar extends StatelessWidget {
  final String rate;
  const RatingBar({Key? key, required this.rate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        width: 29,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              EvaIcons.star,
              size: 15,
              color: Colors.orange,
            ),
            Text(rate)
          ],
        ));
  }
}
