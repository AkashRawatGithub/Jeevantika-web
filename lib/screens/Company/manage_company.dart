import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jeevantika_Web/widgets/button.dart';
import 'package:jeevantika_Web/widgets/style/style.dart';

import '../../utils/screen_size.dart';
import '../../widgets/text_field.dart';

class ManageCompany extends StatefulWidget {
  const ManageCompany({Key? key}) : super(key: key);

  @override
  State<ManageCompany> createState() => _ManageCompanyState();
}

class _ManageCompanyState extends State<ManageCompany> {
  final DataTableSource _data = MyData();
  final _formKey = GlobalKey<FormState>();
  var company_name_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: pageBackground,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 6.0,right: 6.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.08,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 8.0),
                      child: Text("Company Table", style: TextStyle(fontSize: 24,color: Colors.green),),
                    ),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, left: 6.0,right: 6.0),
                  child: Form(
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          Row(
                            children: [

                              SizedBox(height: 10,width: 10 ),
                              custom_textField_withlabel2(
                                  company_name_controller,
                                  "Enter Company",
                                  Colors.green,
                                  SizeConfig.blockSizeVertical*1.5,
                                  "Please Enter Company",
                                  "Select Company*",
                                  true
                              ),
                              SizedBox(height: 10,width: 10),
                              custom_textField_withlabel2(
                                  company_name_controller,
                                  "Enter Registrar",
                                  Colors.green,
                                  SizeConfig.blockSizeVertical*1.5,
                                  "Please Enter Registrar",
                                  "Select Registrar *",
                                  true
                              ),SizedBox(height: 10,width: 10),
                              custom_textField_withlabel2(
                                  company_name_controller,
                                  "Enter Email",
                                  Colors.green,
                                  SizeConfig.blockSizeVertical*1.5,
                                  "Please Enter Email",
                                  "Email*",
                                  true
                              ),
                              SizedBox(height: 10,width: 10,),
                              custom_textField_withlabel2(
                                  company_name_controller,
                                  "Enter Phone No.",
                                  Colors.green,
                                  SizeConfig.blockSizeVertical*1.5,
                                  "Please Enter Phone No.",
                                  "Phone No.*",
                                  true
                              ),
                              custom_button(Save,"Search"),
                              custom_Searchbutton(Save,"Export"),
                            ],
                          ),

                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  child: Column(
                    children: [
                      PaginatedDataTable(
                        source: _data,
                        columns: [
                          DataColumn(label: Text('S.No.')),
                          DataColumn(label: Text('Company Name')),
                          DataColumn(label: Text('Registrar Name')),
                          DataColumn(label: Text('Email')),
                          DataColumn(label: Text('Phone No.')),
                          DataColumn(label: Text('Action'))
                        ],
                        columnSpacing: 100,
                        horizontalMargin: 10,
                        rowsPerPage: 10,
                        showCheckboxColumn: false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Save(){
    if (_formKey.currentState!.validate()) {

    }
  }
}
class MyData extends DataTableSource {
  // Generate some made-up data
  final List<Map<String, dynamic>> _data = List.generate(
      200,
          (index) => {
        "S.No.": index,
        "Company Name": "Company names $index",
        "Registrar Name": "Regastrar Name  $index",
        "Email" : "mail $index",
        "Phone No":"phone $index",
        "Action":"edit delete $index",
      }
      );

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    return DataRow(cells: [
      DataCell(Text(_data[index]['S.No.'].toString())),
      DataCell(Text(_data[index]["Company Name"])),
      DataCell(Text(_data[index]["Registrar Name"].toString()),),
      DataCell(Text(_data[index]["Email"].toString())),
      DataCell(Text(_data[index]["Phone No"].toString())),
      DataCell(Text(_data[index]["Action"].toString()))
    ]);
  }
}
