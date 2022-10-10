import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';
import 'package:flutter_application_1/demo/widget/card_image.dart';
import 'package:flutter_application_1/demo/widget/text_large_welcome.dart';
import 'package:flutter_application_1/demo/widget/text_small_welcome.dart';
import 'package:flutter_application_1/demo/view/class_greengrocer_detail.dart';

class ClassGreengrocer extends StatefulWidget {
  ClassGreengrocer({super.key});

  @override
  State<ClassGreengrocer> createState() => _ClassGreengrocerState();
}

class _ClassGreengrocerState extends State<ClassGreengrocer> {
  final iconList = <IconData>[
    Icons.home,
    Icons.plagiarism_outlined,
    Icons.bookmark_border_rounded,
    Icons.supervised_user_circle_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.shopping_cart,
          color: GreengrocerConst.color_white,
        ),

        //params
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: 0,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (p0) {},
        //other params
      ),
      body: Padding(
        padding: GreengrocerConst.paddingGeneral15,
        child: Container(
          color: GreengrocerConst.color_lightgrey,
          child: Padding(
            padding: GreengrocerConst.paddingGeneronlyLeftRight10,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _appBar(),
                  GreengrocerConst.sizedBoxHeight20,
                  _containerTextImage(context),
                  GreengrocerConst.sizedBoxHeight20,
                  _rowTitleText(),
                  GreengrocerConst.sizedBoxHeight10,
                  _rowPopularItems(),
                  GreengrocerConst.sizedBoxHeight20,
                  _rowTitleTextNew(),
                  _rowNewItems(),
                  GreengrocerConst.sizedBoxHeight10,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SingleChildScrollView _rowNewItems() {
    return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: _cardPotatoesBroccoli());
  }

  SingleChildScrollView _rowPopularItems() {
    return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    _cardOrange(),
                    GreengrocerConst.sizedBoxWidth15,
                    _cardlettuce(),
                    GreengrocerConst.sizedBoxWidth15,
                    _cardStrawberry(),
                    GreengrocerConst.sizedBoxWidth15,
                    _cardPepper(),
                  ]),
                );
  }

  Row _rowTitleTextNew() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLargeWelcome(text: GreengrocerConst.info_card_title),
        TextSmallWelcome(text: GreengrocerConst.info_text_see)
      ],
    );
  }

  Row _cardPotatoesBroccoli() {
    return Row(
      children: [
        CardImage(
            image: GreengrocerConst.image_potatoes,
            text: GreengrocerConst.info_card_potatoes),
        GreengrocerConst.sizedBoxWidth25,
        CardImage(
            image: GreengrocerConst.image_broccoli,
            text: GreengrocerConst.info_card_broccoli),
        GreengrocerConst.sizedBoxWidth25,
        CardImage(
            image: GreengrocerConst.image_grape,
            text: GreengrocerConst.info_card_grape),
        GreengrocerConst.sizedBoxWidth25,
        CardImage(
            image: GreengrocerConst.image_lemon,
            text: GreengrocerConst.info_card_lemon)
      ],
    );
  }

  CardImage _cardPepper() {
    return CardImage(
        image: GreengrocerConst.image_pepper,
        text: GreengrocerConst.info_card_pepper);
  }

  CardImage _cardStrawberry() {
    return CardImage(
        image: GreengrocerConst.image_zero,
        text: GreengrocerConst.info_card_strawberry);
  }

  CardImage _cardlettuce() {
    return CardImage(
        image: GreengrocerConst.image_lettuce,
        text: GreengrocerConst.info_card_lettuce);
  }

  CardImage _cardOrange() {
    return CardImage(
        image: GreengrocerConst.image_orange,
        text: GreengrocerConst.info_card_orange);
  }

  Row _rowTitleText() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextLargeWelcome(text: GreengrocerConst.info_text_popular),
        TextSmallWelcome(text: GreengrocerConst.info_text_see)
      ],
    );
  }

  Row _appBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: GreengrocerConst.color_white,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: GreengrocerConst.color_darkgrey,
                ),
              ),
            ),
            GreengrocerConst.sizedBoxWidth15,
            Text(GreengrocerConst.info_text_location),
          ],
        ),
        CircleAvatar(
            backgroundColor: GreengrocerConst.color_white,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: GreengrocerConst.color_darkgrey,
              ),
            )),
      ],
    );
  }

  Container _containerTextImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 132, 216, 135),
          borderRadius: GreengrocerConst.borderRadiusCircular15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextLargeWelcome(
                        text: GreengrocerConst.info_text_orderbest),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(GreengrocerConst.info_button_ordernow),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Image.asset(
              GreengrocerConst.image_one,
              fit: BoxFit.cover,
              //width: MediaQuery.of(context).size.width / 3.1,
              //height: MediaQuery.of(context).size.height,
            ),
          )
        ],
      ),
    );
  }
}
