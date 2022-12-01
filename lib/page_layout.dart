import 'package:flutter/material.dart';
import 'package:jeevantika_Web/screens/Company/add_company.dart';
import 'package:jeevantika_Web/screens/Company/manage_company.dart';
import 'package:jeevantika_Web/screens/dashboard.dart';
import 'package:jeevantika_Web/screens/zohomail_sidebar.dart';
import 'package:jeevantika_Web/utils/responsive.dart';
import 'package:jeevantika_Web/widgets/sidebar_items/Company_sub_items.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}
var smallscrn;
class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool size_ = true;
  bool visib = false;
  var Company_ = false;
  var zoho_sub = false;
  var dashBoard_;
  var drawercrm;
  var addCompany_;
  var manageCompany_;
  @override
  Widget build(BuildContext context,) {

    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      drawer: Drawer(
        backgroundColor: sidenav,
        child: SafeArea(
          child:Column(
            children: [
              ListTile(
                dense: true,
                title: Text("Home Page",style: TextStyle(color: righticons),),
                leading: Icon(Icons.home),
                onTap: (){
                  //action when this menu is pressed
                },
              ),

              ListTile(
                dense: true,
                title: Text("My Profile",style: TextStyle(color: righticons),),
                leading: Icon(Icons.person),
                onTap: (){
                  //action when this menu is pressed
                },
              ),


              ListTile(
                dense: true,
                title: Text("My Orders",style: TextStyle(color: righticons),),
                leading: Icon(Icons.add_box),
                onTap: (){
                  //action when this menu is pressed
                },
              ),

              ListTile(
                dense: true,
                title: Text("My Favourites",style: TextStyle(color: righticons),),
                leading: Icon(Icons.monitor_heart),
                onTap: (){
                  //action when this menu is pressed
                },
              )
            ],
          )
      ),),
      appBar: AppBar(backgroundColor: topnav,leading: !ResponsiveWidget.isSmallScreen(context)? Container(
        child: Image.asset("assets/images/1.png",),
      ):IconButton(icon: Icon(Icons.menu,color: Colors.white,),
        onPressed: (){
          if(scaffoldKey.currentState!.isDrawerOpen){
            scaffoldKey.currentState!.closeDrawer();
            //close drawer, if drawer is open
          }else{
            scaffoldKey.currentState!.openDrawer();
            //open drawer, if drawer is closed
          }
        },),
      title:  Row(
          children: [
            Expanded(child: Container()),
            IconButton(icon: Icon(Icons.shopping_cart, color: topicon,) , onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.person, color: topicon,),padding:EdgeInsets.only(right: 20,left: 20), onPressed: () {},),
            Stack(
              children: [
                IconButton(icon: Icon(Icons.notifications, color: topicon,), onPressed: (){},),
              ],
            ),
          ],
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child:!ResponsiveWidget.isSmallScreen(context)? Container(
              decoration: BoxDecoration(
                color: sidenav,
              ),
              height: 720,
              width: Company_?195:60,
              child: Row(
                children: [
                  Column(
                    children: [
                      IconButton(icon: Icon(Icons.dashboard,size: 20,),color: Colors.purple, hoverColor: Colors.white,onPressed: () {setState(() {dashBoard_=true;});},),Text("Dashboard",style: TextStyle(fontSize: 9,color: SideiconName,),textAlign: TextAlign.center,),Padding(padding: EdgeInsets.only(bottom: 5)),
                      IconButton(icon: Icon(Icons.school,size: 20,),color: Colors.pink, onPressed: () {setState(() {
                        Company_=!Company_;
                        dashBoard_=false;
                        addCompany_=false;
                      });},),Text("Company",style: TextStyle(fontSize: 9,color: SideiconName,),textAlign: TextAlign.center,),Padding(padding: EdgeInsets.only(bottom: 5)),
                    ],
                  ),
                  Company_ ?
                  Container(
                      child : Container(
                        color: dark,
                        width: 150,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 9.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top:15.0),
                                child:TextButton(onPressed: () { setState(() {
                                  addCompany_=true;
                                  manageCompany_=false;
                                  dashBoard_=false;
                                });}, child: Text("Add Company",style: TextStyle(color: Colors.white,fontSize: 11),),),
                              ),

                              TextButton(onPressed: () { setState(() {
                                addCompany_=false; manageCompany_=true;dashBoard_=false;
                              });}, child: Text("Manage Comapany",style: TextStyle(color: Colors.white,fontSize: 11),),),

                            ],
                          ),
                        ),
                      ),
                  ):Container(),
                ],
              ),
            ): Container(),
          ),
          Expanded(
            child: dashBoard_==true?DashBoard():addCompany_==true?AddCompany():manageCompany_==true?ManageCompany():Container(),
          ),

        ],
      ),

        bottomNavigationBar: BottomAppBar(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Copyright © 2018-2019 ",style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,)),
                InkWell(child: Text("Jeevantika. ",style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Colors.green)),onTap: () {},),
                Text(" All rights reserved.",style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,)),
              ],
            ),
          ),
          color: footerBg,
        ),
    );
  }
}
