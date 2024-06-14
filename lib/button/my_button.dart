import 'package:flutter/material.dart';
import 'package:kizuna_view/providers/on_btn_hover_provider.dart';
import 'package:kizuna_view/resources/resources.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class MyCustomButton extends StatefulWidget {
  final String btnText;
  final Widget leadingIcon;
  final Uri uri;
  
  const MyCustomButton({super.key,required this.btnText, required this.leadingIcon, required, required this.uri });

  @override
  State<MyCustomButton> createState() => _MyCustomButton();
}

class _MyCustomButton extends State<MyCustomButton> {
  bool isHover = false;
  Timer? _timer;
  bool _isLoading = false;

  @override
  void initState() {

    super.initState();
  }

    void _launchURL() async {
    setState(() {
      _isLoading = true;
    });

    _timer = Timer(const Duration(seconds: 5),() {
      setState(() {
        _isLoading = false;
      });
    });

    if (await canLaunchUrl(widget.uri)) {
      await launchUrl(widget.uri);
    } else {
      throw 'Could not launch ${widget.uri}';
    }

    setState(() {
      _isLoading = false;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:(isHover ? Colors.grey : Colors.white70), 
        // boxShadow: [ //if we want to add shadow throwing to the buttons 
        //   BoxShadow(color: Colors.grey.withOpacity(0.5),spreadRadius: 5,blurRadius: 5,offset: const Offset(4,6))
        // ],
        ),
        padding: const EdgeInsets.all(5.0),
      child: Link(
        uri: widget.uri,
        builder: (context, followLink) {
            return InkWell(
        onTap: _isLoading ? null : _launchURL,
        child: _isLoading
            ? const CircularProgressIndicator()
            : Container(
            child: SizedBox(
                  width: 500,
                  height: 40,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      widget.leadingIcon,
                      Text(widget.btnText, style: ConstResources.menyBtnTextStyle,),
                      const Visibility( //Dummy icon widget only to shift alignment between 3 widgets instead of 2 looks better that way !
                        visible: false,
                        maintainSize: true,
                        maintainAnimation: true,
                        maintainState: true,
                        child: Icon(Icons.circle_outlined,color: Colors.grey,),), 
                    ],),
                  ),
          ),
          onHover: (val){
            if (val) {
              setState(() {isHover = val;},);
            } else {
              setState(() {isHover = val;},);  
            }       
          },
        );
        },
      ),
    );
  }

  void boxOnHover(BuildContext context) {
    context.read<OnBtnHooverNotifier>().modfyBoxModel(120, 420);
  }
}

class LoadUrlButton extends StatefulWidget {
  final Uri uri;
  final Widget myWidget;

  const LoadUrlButton({super.key, required this.uri, required this.myWidget});

  @override
  _LoadUrlButtonState createState() => _LoadUrlButtonState();
}

class _LoadUrlButtonState extends State<LoadUrlButton> {
  bool isHover = false;
  bool _isLoading = false;
  Timer? _timer;

  void _launchURL() async {
    setState(() {
      _isLoading = true;
    });

    _timer = Timer(const Duration(seconds: 5),() {
      setState(() {
        _isLoading = false;
      });
    });

    if (await canLaunchUrl(widget.uri)) {
      await launchUrl(widget.uri);
    } else {
      throw 'Could not launch ${widget.uri}';
    }

    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _isLoading ? null : _launchURL,
      child: _isLoading
          ? const CircularProgressIndicator()
          : widget.myWidget,
     onHover: (val){
          if (val) {
            setState(() {isHover = val;},);
          } else {
            setState(() {isHover = val;},);  
          }
          
        },    
    );
  }
}