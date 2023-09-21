import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../Controllers/TextFieldController.dart';
import '../../Utils/CustomTextField.dart';

class RequestLabTesting extends StatefulWidget {
  const RequestLabTesting({Key? key}) : super(key: key);

  @override
  State<RequestLabTesting> createState() => _RequestLabTestingState();
}

class _RequestLabTestingState extends State<RequestLabTesting> {
  final TextEditingController firstname = TextEditingController();
  String _selectedGender = 'Male';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.2,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 2
                    )
                  ],
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30))
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: SvgPicture.asset("assets/logo.svg",height: 30,width: 30,)),
                    ),
                    Row(
                      children: [
                        InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: Icon(CupertinoIcons.left_chevron,color: Colors.black,)),
                        SizedBox(width: 20,),

                        Text("Hi,User",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold),),
                        Expanded(child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 50,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Color(0xffFAB915).withOpacity(0.05)
                            ),
                            child: TextButton(
                              onPressed: (){},
                              child: Text("Log Out",style: TextStyle(color: Color(0xffFAB915),fontSize: 16,fontWeight: FontWeight.bold),),
                            ),
                          ),
                        ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Request Lab Testing",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Please enter your information to request lab testing. If you have questions about how it works, ",style: TextStyle(fontSize: 13,),)),
             Row(
               children: [
                 Text('please ',style:  TextStyle(fontSize: 13,),),
                 InkWell(
                     onTap: (){},
                     child: Text('click here ',style:  TextStyle(fontSize: 13,color: Color(0xffFAB915),decoration: TextDecoration.underline),))

               ],
             ),
                  SizedBox(height: 30,),

                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Step - 1 Personal Information",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),

                  SizedBox(height: 20,),

                  CustomTextField(
                    labelText: 'First Name',
                    hintText: 'User',
                    controller:firstname, // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'Last Name',
                    hintText: 'User',
                    controller:firstname, // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'Address Line 1',
                    hintText: 'California',
                    controller:TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'Address Line 2',
                    hintText: 'USA',
                    controller:TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'City',
                    hintText: 'Texas',
                    controller: TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'State',
                    hintText: 'California',
                    controller:TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'Zip Code',
                    hintText: '7865',
                    controller:TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'Phone',
                    hintText: '000 - 0000 - 0000',
                    controller: TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),

                  CustomTextField(
                    labelText: 'Date of Birth',
                    hintText: 'dd/mm/yy',
                    controller:TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Gender',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xff0D3F67),
                        fontWeight: FontWeight.w500),
                  )),
                  Row(
                    children: [
                      Radio(
                        activeColor: Color(0xffFAB915),

                        value: 'Male',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                      ),
                      Text('Male'),

                      Radio(
                        activeColor: Color(0xffFAB915),
                        value: 'Female',
                        groupValue: _selectedGender,
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value!;
                          });
                        },
                      ),
                      Text('Female'),

                    ],
                  ),
                  SizedBox(height: 10,),


                  CustomTextField(
                    labelText: 'Reason for Lab Testing (detailed is better)',
                    hintText: 'When i woke up i feel like...',
                    controller:TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),


                  CustomTextField(
                    labelText: 'Current Medications (if no, type "none")',
                    hintText: 'No',
                    controller:TextEditingController(), // Initialize the controller
                  ),
                  SizedBox(height: 10,),


                  CustomTextField(
                    labelText: 'Known Allergies (if no, type "none")',
                    hintText: 'No',
                    controller: TextEditingController(), // Initialize the controller
                  ),
              SizedBox(height: 30,),

      Align(
          alignment: Alignment.centerLeft,
          child: Text("Step 2 - Choose Desired Lab Tests",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),

                  Align(
                      alignment: Alignment.center,
                      child: Text("After you finish selecting tests, the total fees due will be displayed before you submit this lab order. At this time, the tests listed are the only tests available through Push Health and stat processing is not available. If you have questions or would like us to add specific tests, please contact us at ",style: TextStyle(fontSize: 15,color: Color(0xff37474F)),)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("questions@pushhealth.com",style: TextStyle(fontSize: 15,color: Color(0xff37474F),decoration: TextDecoration.underline),)),
                  SizedBox(height: 20,),
                  Container(
                    height:   55,
                    decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.grey,
                      //     blurRadius: 2,
                      //     offset: Offset(0, 2),
                      //   ),
                      // ],
                      color: Color(0xffF0F3F6),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Color(0xffF0F3F6)),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        // labelText: labelText,
                        contentPadding: EdgeInsets.all(10),

                        hintText: "Search for tests",
                        hintStyle: TextStyle(fontSize: 15
                          // color: Color(0XFF033F42),
                        ),
                        // filled: true,
                        // fillColor: Color(0xffF0F3F6),
                        prefixIcon:Icon(CupertinoIcons.search,color: Colors.grey,),

                        ),
                      ),
                    ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Show all results',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                      Expanded(child: Align

                        (
                        alignment: Alignment.centerRight,
                        child: IconButton(onPressed: (){},icon: Icon(CupertinoIcons.chevron_down),),))
                    ],
                  )

                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
