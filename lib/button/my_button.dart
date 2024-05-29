import 'package:flutter/material.dart';
import 'package:kizuna_view/providers/on_btn_hover_provider.dart';
import 'package:kizuna_view/resources/resources.dart';
import 'package:provider/provider.dart';

class MyCustomButton extends StatefulWidget {
  final String btnText;
  final Widget leadingIcon;
  const MyCustomButton({super.key,required this.btnText, required this.leadingIcon});

  @override
  State<MyCustomButton> createState() => _MyCustomButton();
}

class _MyCustomButton extends State<MyCustomButton> {
  bool isHover = false;

  @override
  void initState() {

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:(isHover ? Colors.grey : Colors.white70), 
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.5),spreadRadius: 5,blurRadius: 5,offset: const Offset(4,6))
        ],
        ),
        padding: const EdgeInsets.all(5.0),
      // padding: EdgeInsets.only(top: isHover ? 5 : 2.0, bottom: !(isHover) ? 2 : 5.0,left: 10,right: 10),
      child: InkWell(
        onTap: () => print('testing...'),
        onHover: (val){
          if (val) {
            setState(() {isHover = val;},);
          } else {
            setState(() {isHover = val;},);  
          }
          
        },
        child: Container(
          child: SizedBox(
                width: 500,
                height: 40,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    widget.leadingIcon,
                    Text(widget.btnText, style: ConstResources.menyBtnTextStyle,),
                    Icon(Icons.circle_outlined,color: Colors.grey,), 
                  ],),
                ),
        ),
      ),
    );
  }

  void boxOnHover(BuildContext context) {
    context.read<OnBtnHooverNotifier>().modfyBoxModel(120, 420);
  }
}