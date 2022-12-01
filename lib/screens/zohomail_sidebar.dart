import 'package:flutter/material.dart';

class ZohoSidebar extends StatefulWidget {
  const ZohoSidebar({Key? key}) : super(key: key);

  @override
  State<ZohoSidebar> createState() => _ZohoSidebarState();
}

class _ZohoSidebarState extends State<ZohoSidebar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 135    ,
      child: Padding(
        padding: const EdgeInsets.only(left: 9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(onPressed: () {setState(() {
            });  }, child: Text("Inbox",style: TextStyle(color: Colors.white,fontSize: 11),textAlign: TextAlign.left,),),
            TextButton(onPressed: () {  }, child: Text("Starred",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Snoozed",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Sent",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Drafts",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Important",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Scheduled",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("All Mail",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Spam",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Bin",style: TextStyle(color: Colors.white,fontSize: 11),),),
          ],
        ),
      ),
    );
  }

}
