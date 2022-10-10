import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';
import 'package:flutter_application_1/demo/widget/column_mini_container.dart';
import 'package:flutter_application_1/demo/widget/elevatedbutton_height.dart';
import 'package:flutter_application_1/demo/widget/text_large_welcome.dart';
import 'package:flutter_application_1/demo/widget/text_small_welcome.dart';
import 'package:flutter_application_1/demo/view/class_greengrocer_info.dart';

class ClassGreengrocerDetail extends StatelessWidget {
  const ClassGreengrocerDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
        ),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            _rowAppBar(context),
            GreengrocerConst.sizedBoxHeight10,
            Center(child: _image(context)),
            GreengrocerConst.sizedBoxHeight10,
            _headText(context),
            GreengrocerConst.sizedBoxHeight20,
            _rowPriceIcon(context),
            GreengrocerConst.sizedBoxHeight20,
            _textDescription(),
            GreengrocerConst.sizedBoxHeight20,
            _textLorem(context),
            GreengrocerConst.sizedBoxHeight20,
            _textRelatedItem(),
            GreengrocerConst.sizedBoxHeight20,
            _rowContainerMini(),
            GreengrocerConst.sizedBoxHeight30,
            ElevatedButtonHeight(
                onPressed: () {}, text: GreengrocerConst.info_cardAdd)
          ]),
        ),
      ),
    );
  }

  Text _textLorem(BuildContext context) {
    return Text(
      GreengrocerConst.info_detail,
      textAlign: TextAlign.left,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: GreengrocerConst.color_grey),
    );
  }

  Text _headText(BuildContext context) {
    return Text(GreengrocerConst.info_detail_text,
        style: Theme.of(context).textTheme.headline4?.copyWith(
            color: GreengrocerConst.color_black, fontWeight: FontWeight.w600));
  }

  Row _rowContainerMini() {
    return Row(
      children: [
        ColumnMiniContainer(
            image: GreengrocerConst.image_lemon,
            text: GreengrocerConst.info_card_lemon),
        GreengrocerConst.sizedBoxWidth10,
        ColumnMiniContainer(
            image: GreengrocerConst.image_lettuce,
            text: GreengrocerConst.info_card_lettuce),
        GreengrocerConst.sizedBoxWidth10,
        ColumnMiniContainer(
            image: GreengrocerConst.image_zero,
            text: GreengrocerConst.info_card_strawberry),
        GreengrocerConst.sizedBoxWidth10,
        ColumnMiniContainer(
            image: GreengrocerConst.image_meat,
            text: GreengrocerConst.info_card_meat),
        GreengrocerConst.sizedBoxWidth10,
        ColumnMiniContainer(
            image: GreengrocerConst.image_pepper,
            text: GreengrocerConst.info_card_pepper),
      ],
    );
  }

  TextLargeWelcome _textRelatedItem() =>
      TextLargeWelcome(text: GreengrocerConst.info_menu);

  TextLargeWelcome _textDescription() =>
      TextLargeWelcome(text: GreengrocerConst.info_title);

  Row _rowPriceIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          _textPriceDetail(context),
          GreengrocerConst.sizedBoxWidth5,
          _textPriceoneDetail(),
        ]),
        _rowRemoveAdd(context)
      ],
    );
  }

  Image _image(BuildContext context) {
    return Image.asset(
      GreengrocerConst.image_broccoli_one,
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 2,
    );
  }

  Row _rowAppBar(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
          backgroundColor: GreengrocerConst.color_white,
          child: IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ClassGreengrocer()));
              },
              icon: Icon(
                Icons.arrow_back_ios_new_sharp,
                color: GreengrocerConst.color_darkgrey,
              )),
        ),
        CircleAvatar(
            backgroundColor: GreengrocerConst.color_white,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: GreengrocerConst.color_darkgrey,
                )))
      ],
    );
  }

  Row _rowRemoveAdd(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: GreengrocerConst.borderRadiusCircular50,
              color: GreengrocerConst.color_light_green),
          child: IconButton(onPressed: () {}, icon: Icon(Icons.remove)),
        ),
        GreengrocerConst.sizedBoxWidth15,
        Text(
          GreengrocerConst.info_card_quantity,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        GreengrocerConst.sizedBoxWidth15,
        Container(
            decoration: BoxDecoration(
                borderRadius: GreengrocerConst.borderRadiusCircular30,
                color: GreengrocerConst.color_green),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.add)))
      ],
    );
  }

  Text _textPriceoneDetail() {
    return Text(
      GreengrocerConst.info_card_priceone,
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
        decorationThickness: 2,
        decorationColor: Colors.grey,
        decorationStyle: TextDecorationStyle.solid,
        fontSize: 16,
      ),
    );
  }

  Text _textPriceDetail(BuildContext context) {
    return Text(
      GreengrocerConst.info_card_price,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 24),
    );
  }
}
