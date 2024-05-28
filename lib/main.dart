import 'package:flutter/material.dart';
import 'package:kizuna_view/button/my_button.dart';
import 'package:kizuna_view/providers/on_btn_hover_provider.dart';
import 'package:kizuna_view/sections/main_section.dart';
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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 68, 68, 68)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding: const EdgeInsets.only(top: 50,),
        child: Container(
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
                  Text(ConstResources.opKizunaToken,style: ConstResources.menyTextStyle,textAlign: TextAlign.center,),
                  Text(ConstResources.kizunaInfoText, style: ConstResources.menyTextStyle,textAlign: TextAlign.center,),
                  SizedBoxDelimeter.get20DelimeterBox(),
                  const MainMenuSection(),
                  const MainMenuSection(),
                  const MainMenuSection(),
                ],
              ),]
            ),
          ),
        ),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
