import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/screen_size.dart';

custom_button(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: appbarcolor,
        borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
      ),
      child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),)),
    ),
  );
}

custom_button1(onPressed, String s,load) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Container(
      width: SizeConfig.screenWidth,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(
        color: appbarcolor,
        borderRadius: BorderRadius.all(
            Radius.circular(SizeConfig.blockSizeHorizontal*2)
            ),
      ),
      child: TextButton(onPressed: onPressed, child: load?Container(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            color: blue_text,
          )):Text(s,style: TextStyle(color: Colors.white),)),
    ),
  );
}

custom_Searchbutton(onPressed, String s) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      // width: double.infinity,
      //margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
      decoration: BoxDecoration(color: Colors.yellow[800],
        borderRadius: BorderRadius.all(Radius.circular(SizeConfig.blockSizeHorizontal*6)),
      ),
      child: TextButton(onPressed: onPressed, child: Text(s,style: TextStyle(color: Colors.white),)),
    ),
  );
}
