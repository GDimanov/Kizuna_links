
import 'package:flutter/material.dart';

class ConstText {

static String mainInfoText = 'Official Kizuna Channels';

}

class ConstResources {

static String kizunaLogoPath = 'kizuna_logo.png';
static String opKizunaToken = '@KizunaToken';
static String backgroundPath = 'background.jpg';
static String kizunaInfoText = 'The FIRST token built from decentralized AI network Bittensor\nInspired by Ryoshi\’s successful principles of decentralized maximalism.';
static String officialWeb = 'Official Website';
static String officialTelegram = 'Official Telegram Group';
static String officalXAcc = 'Official X Account';
static String officialMedium = 'Official Medium';
static Color durtyWhite = Colors.white70;
static Color myBlack = Colors.black87;

static TextStyle menyTextStyle = TextStyle(color: ConstResources.durtyWhite,);
static TextStyle menyBtnTextStyle = TextStyle(color: ConstResources.myBlack);

}

class SizedBoxDelimeter {

static SizedBox get20DelimeterBox() {
  return const SizedBox(height: 20,);
}

static SizedBox get5DelimeterBox() {
  return const SizedBox(height: 5,);
}

}