import 'package:flutter/material.dart';
import 'package:kizuna_view/providers/on_btn_hover_provider.dart';
import 'package:kizuna_view/sections/buy_section.dart';
import 'package:kizuna_view/sections/chart_section.dart';
import 'package:kizuna_view/sections/eth_scan_section.dart';
import 'package:kizuna_view/sections/krew_section.dart';
import 'package:kizuna_view/sections/main_section.dart';
import 'package:kizuna_view/sections/sign_section.dart';
import 'package:provider/provider.dart';
import 'package:kizuna_view/resources/resources.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => OnBtnHooverNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
                decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(ConstResources.backgroundPath),
                fit: BoxFit.fill,)
              ),
          child: Center(
            child: ListView(
              children:[
               Column(
                children: [
                  const SizedBox(height: 20,),
                  Image(image: AssetImage(ConstResources.kizunaLogoPath)),
                  SizedBoxDelimeter.get20DelimeterBox(),
                  Text(ConstText.opKizunaToken,style: ConstResources.menyTextStyle,textAlign: TextAlign.center,),
                  Text(ConstText.kizunaInfoText, style: ConstResources.menyTextStyle,textAlign: TextAlign.center,),
                  SizedBoxDelimeter.get20DelimeterBox(),
                  const MainMenuSection(),
                  const BuyMenuSection(),
                  const ChartSection(),
                  const EthScanSection(),
                  const KrewSection(),
                  SizedBoxDelimeter.getDelimeterBoxOfSize(60),
                  const SignSection(),
                  SizedBoxDelimeter.getDelimeterBoxOfSize(60)
                ],
              ),]
            ),
          ),
        ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
