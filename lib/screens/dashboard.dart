import 'package:flutter/material.dart';

import '../utils/responsive.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return ListView(scrollDirection:Axis.vertical,children: [Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: ResponsiveWidget.isLargeScreen(context)? Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.15,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),

              ],
            ),
          ],
        ),
        ): ResponsiveWidget.isMediumScreen(context)?Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.3,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
              ],
            ),
          ],
        ),
        ): ResponsiveWidget.isSmallScreen(context)?Container(child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),

              ],
            ),

            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Card(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width*0.45,
                    height: 110,
                    child:Text('Total Registration'),
                  ),
                ),

              ],
            ),
          ],
        ),
        ):Container(),
      ),
    )]);
  }
}
