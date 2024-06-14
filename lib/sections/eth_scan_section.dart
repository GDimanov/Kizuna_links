import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kizuna_view/button/my_button.dart';
import 'package:kizuna_view/resources/resources.dart';

class EthScanSection extends StatelessWidget {
  const EthScanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBoxDelimeter.get20DelimeterBox(),
        Text(ConstText.ethScanText,style: ConstResources.menyTextStyle,textAlign: TextAlign.center),
        MyCustomButton(btnText: ConstText.ethScanCA,leadingIcon: SvgPicture.asset(ConstResources.etherScanSvgLogo,height: ConstValues.vectorHeight,width: ConstValues.vectorWidth,),uri: Uri.parse(ConstResources.kizunaEthContract)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.ethScanBurn, leadingIcon: SvgPicture.asset(ConstResources.fireSvgLogo,height: ConstValues.vectorHeight,width: ConstValues.vectorWidth,),uri: Uri.parse(ConstResources.kizunaEthBurn)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.ethOrigami, leadingIcon: SvgPicture.asset(ConstResources.craneSvgLogo,height: ConstValues.vectorHeight,width: ConstValues.vectorWidth,),uri: Uri.parse(ConstResources.kizunaEthOrigami)),
      ],
    );
  }
}