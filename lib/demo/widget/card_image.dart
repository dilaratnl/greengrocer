import 'package:flutter/material.dart';
import 'package:flutter_application_1/demo/const/greengrocer_const.dart';
import 'package:flutter_application_1/demo/view/class_greengrocer_detail.dart';

class CardImage extends StatefulWidget {
  const CardImage({super.key, required this.image, required this.text});

  final String image;
  final String text;

  @override
  State<CardImage> createState() => _CardImageState();
}

class _CardImageState extends State<CardImage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ClassGreengrocerDetail()));
      },
      child: ClipRRect(
        borderRadius: GreengrocerConst.borderRadiusCircular30,
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2.2,
          height: MediaQuery.of(context).size.height / 3.8,
          child: Card(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(flex: 5, child: _centerImage(context)),GreengrocerConst.sizedBoxHeight10,
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textFruit(context),
                      GreengrocerConst.sizedBoxHeight5,
                      _cardKg(context),
                      GreengrocerConst.sizedBoxHeight5,
                      _rowPriceAdd(context),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Row _rowPriceAdd(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            _textPrice(context),
            GreengrocerConst.sizedBoxWidth5,
            _textPriceOne()
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: GreengrocerConst.borderRadiusCircular30,
                color: GreengrocerConst.color_green,
              ),
              width: MediaQuery.of(context).size.width / 10,
              height: MediaQuery.of(context).size.height / 22,
              child: Icon(Icons.add),
            )
          ],
        )
      ],
    );
  }

  Text _textPriceOne() {
    return Text(
      GreengrocerConst.info_card_priceone,
      style: TextStyle(
        decoration: TextDecoration.lineThrough,
        decorationThickness: 3,
        decorationColor: Colors.grey,
        decorationStyle: TextDecorationStyle.solid,
        fontSize: 12,
      ),
    );
  }

  Text _textPrice(BuildContext context) {
    return Text(
      GreengrocerConst.info_card_price,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(fontWeight: FontWeight.bold, fontSize: 18),
    );
  }

  Text _cardKg(BuildContext context) {
    return Text(
      GreengrocerConst.info_card_quantity,
      style: Theme.of(context)
          .textTheme
          .subtitle2
          ?.copyWith(fontSize: 12, color: GreengrocerConst.color_grey),
    );
  }

  Text _textFruit(BuildContext context) {
    return Text(
      widget.text,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(fontWeight: FontWeight.w500),
    );
  }

  Center _centerImage(BuildContext context) {
    return Center(
      child:
          Image.asset(widget.image, fit: BoxFit.fill,),
    );
  }
}
