import 'package:flutter/material.dart';

class BoxDimensionsModel {

late double height;
late double width;

  BoxDimensionsModel({required this.height,required this.width});

}

class OnBtnHooverNotifier extends ChangeNotifier{

   double defHeight = 100;
   double defWidth = 400;

   BoxDimensionsModel? boxModel;

   BoxDimensionsModel? getBoxModel() {
    return boxModel;
   }

   void setDefBoxModel() {
    BoxDimensionsModel defModel = BoxDimensionsModel(height: defHeight, width: defWidth);
    boxModel = defModel;
    notifyListeners();
   }

   void modfyBoxModel(double newHeight, double newWidth) {
    boxModel?.height = newHeight;
    boxModel?.width = newWidth;
    notifyListeners();
   }



}