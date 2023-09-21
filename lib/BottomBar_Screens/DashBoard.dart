import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controllers/PatientsListController.dart';
import 'PatientListItems.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  final PatientsListController _listController = Get.put(PatientsListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: SvgPicture.asset("assets/logo.svg",height: 30,width: 30,)),
              ),
              Row(
                children: [
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
              SizedBox(height: 40,),
              Align(
                  alignment: Alignment.centerLeft,

                  child: Text("Choose a Patient",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              SizedBox(height: 30,),

              Expanded(
                child: Obx(
                      () => ListView.builder(
                    itemCount: _listController.items.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: PatientListItem(
                          text: _listController.items[index],
                          onPressed: () {
                            // Handle item tap here, if needed
                          },
                        ),
                      );
                    },
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
