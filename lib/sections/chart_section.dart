import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kizuna_view/button/my_button.dart';
import 'package:kizuna_view/resources/resources.dart';

class ChartSection extends StatelessWidget {
  const ChartSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBoxDelimeter.get20DelimeterBox(),
        Text(ConstText.chartsText,style: ConstResources.menyTextStyle,textAlign: TextAlign.center),
        MyCustomButton(btnText: ConstText.chartMcap,leadingIcon: SvgPicture.asset(ConstResources.cmcSvgLogo,height: 48,width: 48,),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.chartGeko, leadingIcon: SvgPicture.asset(ConstResources.gecoSvgLogo,height: 48,width: 48,),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.chartDexTools, leadingIcon: SvgPicture.asset(ConstResources.dexToolsSvgLogo,height: 48,width: 48,),),
        SizedBoxDelimeter.get5DelimeterBox(),
        MyCustomButton(btnText: ConstText.chartDexScreener, leadingIcon: SvgPicture.asset(ConstResources.dexScreenerSvgLogo,height: 48,width: 48,),),
      ],
    );
  }
}