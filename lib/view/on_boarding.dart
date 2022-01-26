import 'package:book_app/helper/constant/string_constant.dart';
import 'package:book_app/helper/style/container_style.dart';
import 'package:book_app/helper/style/text_style.dart';
import 'package:book_app/view/home_page.dart';
import 'package:flutter/material.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            const BackImage(),
            Positioned(
              height: MediaQuery.of(context).size.height / 3,
              child: RichText(
                text: TextSpan(
                  text: StringConstant.instance.flamin,
                  style: UITextStyle.instance.onboardingText,
                  children: <TextSpan>[
                    TextSpan(
                      text: StringConstant.instance.go,
                      style: UITextStyle.instance.onboardingText,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 56,
              width: 223,
              decoration: UIContainerStyle.instance.UIBoxDecoration,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Center(
                    child: Text("start reading",
                        style: UITextStyle.instance.textStyle20w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackImage extends StatelessWidget {
  const BackImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/image/1.jpg"),
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
