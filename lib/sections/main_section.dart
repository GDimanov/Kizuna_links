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
        MyCustomButton(btnText: ConstResources.officialWeb,leadingIcon: const Icon(Icons.ac_unit),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstResources.officialTelegram, leadingIcon: const Icon(Icons.ac_unit)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstResources.officalXAcc, leadingIcon: const Icon(Icons.ac_unit)),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstResources.officialMedium, leadingIcon: const Icon(Icons.ac_unit)),
      ],
    );
  }
}