import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        MyCustomButton(btnText: ConstText.buyOnUniswap,leadingIcon: SvgPicture.asset(ConstResources.uniswapSvgLogo,height: 48,width: 48,),uri: Uri.parse(ConstResources.kizunaBuyUniswap)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.buyOnAltCtrl, leadingIcon: SvgPicture.asset(ConstResources.altctrlSvgLogo,height: 48,width: 48,),uri: Uri.parse(ConstResources.kizunaBuyAltCtrl)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.buyOnFlooz, leadingIcon: SvgPicture.asset(ConstResources.floozxyaSvgLogo,height: 48,width: 48,),uri: Uri.parse(ConstResources.kizunaBuyFlooz)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.buyOnBilaxy, leadingIcon: SvgPicture.asset(ConstResources.bilaxySvgLogo,height: 48,width: 48,),uri: Uri.parse(ConstResources.kizunaBuyBilaxy)),
      ],
    );
  }
}
