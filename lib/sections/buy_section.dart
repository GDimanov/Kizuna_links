import 'package:flutter/material.dart';
import 'package:kizuna_view/button/my_button.dart';
import 'package:kizuna_view/resources/resources.dart';

class BuyMenuSection extends StatelessWidget {
  const BuyMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBoxDelimeter.get20DelimeterBox(),
        Text(ConstText.buyMenuText,style: ConstResources.menyTextStyle,textAlign: TextAlign.center),
        MyCustomButton(btnText: ConstText.buyOnUniswap,leadingIcon: Image(fit: BoxFit.contain,image: AssetImage(ConstResources.kizunaLogoPath)) ,),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.buyOnAltCtrl, leadingIcon: Image(fit: BoxFit.contain, image: AssetImage(ConstResources.telegramLogoPath)),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.buyOnFlooz, leadingIcon: Image(fit: BoxFit.contain, image: AssetImage(ConstResources.telegramLogoPath)),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.buyOnBilaxy, leadingIcon: Image(fit: BoxFit.contain, image: AssetImage(ConstResources.telegramLogoPath)),),
      ],
    );
  }
}
