import 'package:flutter/material.dart';
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
        MyCustomButton(btnText: ConstText.officialWeb,leadingIcon: Image(fit: BoxFit.contain,image: AssetImage(ConstResources.kizunaLogoPath)) ,),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.officialTelegram, leadingIcon: Image(fit: BoxFit.contain, image: AssetImage(ConstResources.telegramLogoPath)),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.officalXAcc, leadingIcon: Image(fit: BoxFit.contain, image: AssetImage(ConstResources.xLogoPath)),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.officialMedium, leadingIcon: const Icon(Icons.ac_unit)),
      ],
    );
  }
}