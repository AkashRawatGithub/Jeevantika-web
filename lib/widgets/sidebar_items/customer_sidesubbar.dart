import 'package:flutter/material.dart';

import '../style/style.dart';

var custom_dash;
class CustomerSideSub extends StatefulWidget {
  const CustomerSideSub({Key? key}) : super(key: key);

  @override
  State<CustomerSideSub> createState() => _CustomerSideSubState();
}

class _CustomerSideSubState extends State<CustomerSideSub> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: dark,
      child: Padding(
        padding: const EdgeInsets.only(left: 9.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top:15.0),
              child: ElevatedButton(
                child: Text('Add Customers', style: TextStyle(fontSize: 10.0),),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:15.0),
              child: TextButton(onPressed: () {setState(() {
                custom_dash= true;
              }); }, child: Text("Dashboard",style: TextStyle(color: Colors.white,fontSize: 11), ),),
            ),
            TextButton(onPressed: () {  }, child: Text("Pre Sales",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Leads",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Users",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Premium Customers",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Completed Customers",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Junk User",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Research",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Resource",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Sales Tracker",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Service Tracker",style: TextStyle(color: Colors.white,fontSize: 11),),),
            TextButton(onPressed: () {  }, child: Text("Customer Survey",style: TextStyle(color: Colors.white,fontSize: 11),),),
          ],
        ),
      ),
    );
  }
}
