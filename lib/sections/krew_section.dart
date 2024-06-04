import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kizuna_view/button/my_button.dart';
import 'package:kizuna_view/resources/resources.dart';

class KrewSection extends StatelessWidget {
  const KrewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBoxDelimeter.get20DelimeterBox(),
        Text(ConstText.krewText,style: ConstResources.menyTextStyle,textAlign: TextAlign.center),
        MyCustomButton(btnText: ConstText.krewDocs, leadingIcon: SvgPicture.asset(ConstResources.docsSvgLogo,height: 48,width: 48,),uri:  Uri.parse(ConstResources.docsLink),),
      ],
    );
  }
}