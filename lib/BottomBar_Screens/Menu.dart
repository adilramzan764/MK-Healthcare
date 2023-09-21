import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'RequestLabTest/About_LabTest.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
 final List<String> texts=[
   'Send Message',
   'Request Lab Test',
   'Request Prescription',
   'My Chart',
   'My Profile',
   'Condition/Disease'

 ];
 final List<String> icons=[
   'assets/chat.svg',
   'assets/ps_lab.svg',
   'assets/prescription.svg',
   'assets/mycart.svg',
   'assets/profile.svg',
   'assets/condition.svg',
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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

          SizedBox(height: 40,),
      Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GridView.builder(
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Set the number of columns

          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child:InkWell(
                onTap: (){
                  if(texts[index]=='Request Lab Test'){
                    Get.to(About_LabTest());
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5), // Shadow color
                        // spreadRadius: 1, // Spread radius
                        blurRadius: 2, // Blur radius
                        // offset: Offset(0, 2), // Offset in the x, y direction
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        icons[index],
                        height: 80,
                        width: 80,
                        color: index == 0 ? Color(0xffFAB915) : null, // Conditionally set color
                      ),
                      SizedBox(height: 10),
                      Text(
                        texts[index],
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      )
                    ],
                  ),
                ),
              )
              ,
            );
          },
        ),
      ),
      )


        ],
      ),
    );
  }
}
