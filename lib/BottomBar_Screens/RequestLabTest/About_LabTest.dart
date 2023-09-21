import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'RequestLabTesting.dart';

class About_LabTest extends StatefulWidget {
   About_LabTest({Key? key}) : super(key: key);

  @override
  State<About_LabTest> createState() => _About_LabTestState();
}

class _About_LabTestState extends State<About_LabTest> {
  bool ispressed=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.22,
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
                    SizedBox(height: 40,),
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
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Affordable Lab Testing Made Simple",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 20,),

                  Align(
                      alignment: Alignment.centerLeft,

                      child: Text("Mk Health Care has made it simple and convenient to request a lab order from your medical provider at affordable prices. Please review how the process works before getting started.",style: TextStyle(fontSize: 16,color: Color(0xff37474F)),)),
                  SizedBox(height: 40,),
                  Align(
                      alignment: Alignment.centerLeft,

                      child: Text("How it Works",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
SizedBox(height: 20,),
                  SingleChildScrollView(
                    child: Container(
                      // height: MediaQuery.of(context).size.height,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
         color: Colors.grey,
                            blurRadius: 1
                          )
                        ]
                      ),
                      child: Column(
                        children: [
SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: [
                                Text("Step 1 - Complete the Lab Test Request\n Form More",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Expanded(
                                    // flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerRight,

                                      child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(CupertinoIcons.chevron_down,color: Colors.grey,),iconSize: 22,
                                ),
                                    ))
                              ],
                            ),
                          ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
                    children: [
                      Text("Step 2 - Get Tested (If Approved)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      Expanded(
                        // flex: 1,
                          child: Align(
                            alignment: Alignment.centerRight,

                            child: IconButton(
                              onPressed: (){
                                setState(() {
                                  ispressed= !ispressed; // Set isPressed to true when needed
                                });
                              },
                              icon: ispressed==false ? Icon(CupertinoIcons.chevron_down,color: Colors.grey,)
                            : Icon(CupertinoIcons.chevron_up,color: Colors.grey,),iconSize: 22,
                      ),
                          ))
                    ],
          ),),
                          if(ispressed!=false)
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text("1. If your request is approved, you will receive a notification that your medical provider has approved your request.\n 2. Log into Push Health and review and print your lab order.\n3. Go to your selected lab and get tested.",style: TextStyle(fontSize: 14,color: Color(0xff75808A),height: 1.5),),
                          ),
                          // SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Row(
                              children: [
                                Text("Step 3 - Get Results (If Approved)",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                                Expanded(
                                  // flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerRight,

                                      child: IconButton(
                                        onPressed: (){},
                                        icon: Icon(CupertinoIcons.chevron_down,color: Colors.grey,),iconSize: 22,
                                      ),
                                    ))
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffFAB915)
                    ),
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(RequestLabTesting());

                      }
                      ,
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Next",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
