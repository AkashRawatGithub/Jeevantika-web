import 'package:flutter/widgets.dart';

class SizeConfig {
  static double screenWidth=0.0;
  static double screenHeight=0.0;
  static double blockSizeHorizontal=0.0;
  static double blockSizeVertical=0.0;
  static double _safeAreaHorizontal=0.0;
  static double _safeAreaVertical=0.0;
  static double safeBlockHorizontal=0.0;
  static double safeBlockVertical=0.0;
  static Orientation orientation=Orientation.portrait;

  late MediaQueryData _mediaQueryData;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    _safeAreaHorizontal =
        _mediaQueryData.padding.left + _mediaQueryData.padding.right;
    _safeAreaVertical =
        _mediaQueryData.padding.top + _mediaQueryData.padding.bottom;
    safeBlockHorizontal = (screenWidth - _safeAreaHorizontal) / 100;
    safeBlockVertical = (screenHeight - _safeAreaVertical) / 100;
    orientation = MediaQuery.of(context).orientation;
  }
}

final buttontitle = SizeConfig.safeBlockHorizontal * 4.5;
final buttonicon = SizeConfig.safeBlockHorizontal * 5;
final appbartitle = SizeConfig.safeBlockHorizontal * 5;
final heading3 = SizeConfig.safeBlockHorizontal * 5;
final title1 = SizeConfig.safeBlockHorizontal * 4;
final title2 = SizeConfig.safeBlockHorizontal * 3.5;
final text1 = SizeConfig.safeBlockHorizontal * 3;
final text2 = SizeConfig.safeBlockHorizontal * 2.5;
final tbtitle = SizeConfig.safeBlockHorizontal * 3.5;
final tbheight = SizeConfig.safeBlockVertical * 4.5;
final weathercity = SizeConfig.safeBlockHorizontal * 3;
final weathertemp = SizeConfig.blockSizeHorizontal * 8;
final tileboxwidth = SizeConfig.safeBlockHorizontal * 35;
final tileboxheight = SizeConfig.safeBlockVertical * 12;
final btn_padding_top = SizeConfig.safeBlockVertical * 2;
final btn_padding_bottom = SizeConfig.safeBlockVertical * 2;
final icon_size = SizeConfig.safeBlockVertical * 3;

// TODO Implement this library.
