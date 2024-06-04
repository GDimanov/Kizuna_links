import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kizuna_view/button/my_button.dart';
import 'package:kizuna_view/resources/resources.dart';
import 'package:url_launcher/link.dart';

class SignSection extends StatefulWidget {
  const SignSection({super.key});

  @override
  State<SignSection> createState() => _SignSectionState();
}

class _SignSectionState extends State<SignSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(ConstResources.developedBy,height: 24,width: 24,),
                      Link(uri: Uri.parse(ConstResources.myXlink),
                      builder: (context, followLink) {
                       return LoadUrlButton(uri: Uri.parse(ConstResources.myXlink),myWidget: SvgPicture.asset(ConstResources.xSignSvgLogo,height: 24,width: 24,)); 
                      }, 
                      ),
                    ],
                  );
  }
}