import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:jeevantika_Web/utils/screen_size.dart';

import '../../widgets/button.dart';
import '../../widgets/style/style.dart';
import '../../widgets/text_field.dart';

class AddCompany extends StatefulWidget {
  const AddCompany({Key? key}) : super(key: key);

  @override
  State<AddCompany> createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  final _formKey = GlobalKey<FormState>();
  var company_controller = TextEditingController();
  var company_name_controller = TextEditingController();
  var state_controller = TextEditingController();
  var city_controller = TextEditingController();
  var phone_no_controller = TextEditingController();
  var mail_controller = TextEditingController();
  var selectval = "Tokyo";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
       color: pageBackground,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.08,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 8.0),
                    child: Text("Add Company", style: TextStyle(fontSize: 24,color: Colors.green),),
                  ),
                  color: Colors.white,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 10.0,bottom: 3.0, top: 8.0,right: 10),
                child: Container(
                  color: Colors.white,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                      children:[
                        // TextFormField(
                        //   decoration: const InputDecoration(
                        //     border: OutlineInputBorder(borderSide: BorderSide()),
                        //     labelText: 'Enter your username',
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              SizedBox(height: 10,width: 10,),
                              custom_textField_withlabel1(
                                  state_controller,
                                  "Enter Company Name",
                                  Colors.green,
                                  SizeConfig.blockSizeVertical*1.5,
                                  "Please Enter Company Name",
                                  "Company Name *",
                                  true
                              ),
                              SizedBox(height: 10,width: 30,),
                              custom_textField_withlabel1(
                                  state_controller,
                                  "Enter State Name",
                                  Colors.green,
                                  SizeConfig.blockSizeVertical*1.5,
                                  "Please Enter State Name",
                                  "State Name *",
                                  true
                              ),
                              SizedBox(height: 10,width: 30,),
                              custom_textField_withlabel1(
                                  city_controller,
                                  "Enter City Name",
                                  Colors.green,
                                  SizeConfig.blockSizeVertical*1.5,
                                  "Please Enter The Name",
                                  "Select City *",
                                  true
                              ),
                            ],
                          ),
                        ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(height: 10,width: 10,),
                          custom_textField_withlabel1(
                              phone_no_controller,
                              "Enter Phone No",
                              Colors.green,
                              SizeConfig.blockSizeVertical*1.5,
                              "Please Enter Phone No",
                              "Phone No *",
                              true
                          ),SizedBox(height: 10,width: 30,),
                          custom_textField_withlabel1(
                              mail_controller,
                              "Enter Email",
                              Colors.green,
                              SizeConfig.blockSizeVertical*1.5,
                              "Please Enter Email",
                              "Email *",
                              true
                          ),SizedBox(height: 10,width: 30,),
                          custom_textField_withlabel1(
                              company_name_controller,
                              "Enter Company Address",
                              Colors.green,
                              SizeConfig.blockSizeVertical*1.5,
                              "Please Enter Company Address",
                              "Company Address *",
                              true
                          ),
                        ],
                      ),
                    ),

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       children: [
                         SizedBox(height: 10,width: 10,),
                         custom_textField_withlabel1(
                             company_name_controller,
                             "Enter Registrar Name",
                             Colors.green,
                             SizeConfig.blockSizeVertical*1.5,
                             "Please Enter Registrar Name",
                             "Registrar Name *",
                             true
                         ),SizedBox(height: 10,width: 30,),
                         custom_textField_withlabel1(
                             company_name_controller,
                             "Enter Security Code",
                             Colors.green,
                             SizeConfig.blockSizeVertical*1.5,
                             "Please Enter Security Code",
                             "Security Code *",
                             true
                         ),SizedBox(height: 10,width: 30,),
                         custom_textField_withlabel1(
                             company_name_controller,
                             "Enter Isin No",
                             Colors.green,
                             SizeConfig.blockSizeVertical*1.5,
                             "Please Enter Isin No",
                             "Isin No *",
                             true
                         ),
                       ],
                     ),
                   ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(height: 10,width: 10,),
                        custom_textField_withlabel1(
                            company_name_controller,
                            "Enter Security ID",
                            Colors.green,
                            SizeConfig.blockSizeVertical*1.5,
                            "Please Enter Security ID",
                            "Security ID *",
                            true
                        ),SizedBox(height: 10,width: 30,),
                        custom_textField_withlabel1(
                            company_name_controller,
                            "Enter Current Market Price",
                            Colors.green,
                            SizeConfig.blockSizeVertical*1.5,
                            "Please Enter Current Market Price",
                            "Current Market Price *",
                            true
                        ),
                      ],
                    ),
                  ),

        Padding(padding: const EdgeInsets.only(left: 8.0),child: Row(children:[custom_button(Save,"Add Company")]))

        ]
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  Save(){
    if (_formKey.currentState!.validate()) {
      log("message");
    }
  }
}
