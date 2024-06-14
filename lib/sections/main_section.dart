import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kizuna_view/button/my_button.dart';
import 'package:kizuna_view/resources/resources.dart';

class MainMenuSection extends StatelessWidget {
  const MainMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBoxDelimeter.get20DelimeterBox(),
        Text(ConstText.mainInfoText,style: ConstResources.menyTextStyle,textAlign: TextAlign.center),
        MyCustomButton(btnText: ConstText.officialWeb,leadingIcon: SvgPicture.asset(ConstResources.kizunaSvgLogo,height: ConstValues.vectorHeight,width: ConstValues.vectorWidth,),uri: Uri.parse(ConstResources.kizunaOfficialWeb)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.officialTelegram, leadingIcon: SvgPicture.asset(ConstResources.telegramSvgLogo,height: ConstValues.vectorHeight,width: ConstValues.vectorWidth,),uri: Uri.parse(ConstResources.kizunaOfficialTelegram)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.officalXAcc, leadingIcon: SvgPicture.asset(ConstResources.xSvgLogo,height: ConstValues.vectorHeight,width: ConstValues.vectorWidth,),uri: Uri.parse(ConstResources.kizunaOfficialX)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.officialMedium, leadingIcon: SvgPicture.asset(ConstResources.mediumSvgLogo,height: ConstValues.vectorHeight,width: ConstValues.vectorWidth,),uri: Uri.parse(ConstResources.kizunaOfficialMedium),),
      ],
    );
  }
}