import 'package:flutter/material.dart';

import '../../page_layout.dart';
import '../../screens/dashboard.dart';
import '../style/style.dart';

var custom_dash;
class CompanySubItem extends StatefulWidget {
  const CompanySubItem({Key? key}) : super(key: key);

  @override
  State<CompanySubItem> createState() => _CompanySubItem();
}

class _CompanySubItem extends State<CompanySubItem> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark,
      width: 135,
      child: Padding(
        padding: const EdgeInsets.only(left: 9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child:TextButton(onPressed: () { }, child: Text("Add Company",style: TextStyle(color: Colors.white,fontSize: 11),),),
            ),

            TextButton(onPressed: () {  }, child: Text("Manage Comapany",style: TextStyle(color: Colors.white,fontSize: 11),),),

          ],
        ),
      ),
    );
  }
}
