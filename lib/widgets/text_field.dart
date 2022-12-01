import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/screen_size.dart';

custom_textField(controller, hintText, hintColor, hintFontSize, errorMsg,onChanged) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5),
    child: TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
           return errorMsg;
        }
        else if(value.toString() == "0")
        {
          return errorMsg;
        }
        return null;
      },
      autofocus: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        border: new OutlineInputBorder(borderSide: new BorderSide()),
        hintText: hintText,
        label: Text(hintText),
        hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
      ),
    ),
  );
}


custom_textField_withlabel(controller, hintText, hintColor, hintFontSize, errorMsg, label) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*2),
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5),
    child: TextFormField(
      enabled: hintText=="Mobile"?false:true,
      style: TextStyle(
        fontSize: hintFontSize
      ),
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return errorMsg;
        }
        return null;
      },
      autofocus: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        labelText: label,
        border: new OutlineInputBorder(borderSide: new BorderSide()),
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
      ),
    ),
  );
}
custom_textField_withlabel1(controller, hintText, hintColor, hintFontSize, errorMsg, label,eneble) {
  return Container(
    width: 400,
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*10),
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5),
    child: TextFormField(
      enabled: true,
      style: TextStyle(
        fontSize: hintFontSize
      ),
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return errorMsg;
        }
        return null;
      },
      autofocus: false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        labelText: label,
        border: new OutlineInputBorder(borderSide: new BorderSide()),
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
      ),
    ),
  );
}

custom_text_header(text){
  return Text(
      text
      ,style: TextStyle(
    color: appbarcolor,
    fontSize: SizeConfig.blockSizeVertical*3
  ),
  );
}

custom_textField_dropDown(
    onChanged,controller, hintText, hintColor, hintFontSize, errorMsg) {
  return Container(
    // height: SizeConfig.blockSizeVertical*7,
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 10),
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5),
    child: TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: (value) {
        if (value!.isEmpty) {
          return errorMsg;
        }
        return null;
      },
      autofocus: true,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        border: new OutlineInputBorder(borderSide: new BorderSide()),
        hintText: hintText,
        label: Text(hintText),
        hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
      ),
    ),
  );
}

custom_textField_inactive(controller, hintText, hintColor, hintFontSize,onchange) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*5),
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5),
    child: TextFormField(
      controller: controller,
      onChanged: onchange,
      /*validator: (value) {
        if (value!.isEmpty) {
          return error_msg;
        }
        return null;
      },*/
      autofocus: true,
      enabled: false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        border: new OutlineInputBorder(borderSide: new BorderSide()),
        hintText: hintText,
        label: Text(hintText),
        hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
      ),
    ),
  );
}

custom_textField_withlabel2(controller, hintText, hintColor, hintFontSize, errorMsg, label,eneble) {
  return Container(
    width: 200,
    height: 30,
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*10),
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5),
    child: TextFormField(
      enabled: true,
      style: TextStyle(
          fontSize: hintFontSize
      ),
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return errorMsg;
        }
        return null;
      },
      autofocus: false,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
        labelText: label,
        border: new OutlineInputBorder(borderSide: new BorderSide()),
        hintText: hintText,
        hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
      ),
    ),
  );
}

// custom_textField_dropDown2(
//     onChanged,controller, hintText, hintColor, hintFontSize, errorMsg) {
//   return Container(
//     // height: SizeConfig.blockSizeVertical*7,
//     margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 10),
//     padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 1.5),
//     child: DropdownButtonFormField(
//       controller: controller,
//       onChanged: onChanged,
//       validator: (value) {
//         if (value!.isEmpty) {
//           return errorMsg;
//         }
//         return null;
//       },
//       autofocus: true,
//       textInputAction: TextInputAction.next,
//       decoration: InputDecoration(
//         contentPadding:
//         const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
//         border: new OutlineInputBorder(borderSide: new BorderSide()),
//         hintText: hintText,
//         label: Text(hintText),
//         hintStyle: TextStyle(color: hintColor, fontSize: hintFontSize),
//       ), items: [],
//     ),
//   );
// }

custom_textField_withlabel3( hintFontSize,) {
  return Container(
    width: 400,
    margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal*10),
    padding: EdgeInsets.only(top: SizeConfig.blockSizeVertical*1.5),
    child: TextFormField(
      // controller: controller,
      style: TextStyle(
          fontSize: hintFontSize
      ),
      decoration: const InputDecoration(
        border: OutlineInputBorder(borderSide: BorderSide()),
        labelText: 'Enter your username',
      ),
    ),
  );
}

void blanck(value){}
