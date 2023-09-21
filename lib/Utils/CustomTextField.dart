import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Controllers/TextFieldController.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextEditingController controller;
  final bool isPassword;


  CustomTextField({
    required this.labelText,
    required this.hintText,
    required this.controller,
    this.isPassword=false
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height:  labelText=='Reason for Lab Testing (detailed is better)'? 180 : 85,
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
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10.0, top: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  labelText,
                  style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff0D3F67),
                      fontWeight: FontWeight.w500),
                )),
          ),
          // SizedBox(height: 2,),
          TextField(
            maxLines:labelText=='Reason for Lab Testing (detailed is better)'? 4 : 1 ,
            maxLength: labelText=='Reason for Lab Testing (detailed is better)'? 150 : null,
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              border: InputBorder.none,
              // labelText: labelText,
              contentPadding: EdgeInsets.all(10),

              hintText: hintText,
              hintStyle: TextStyle(fontSize: 15
                  // color: Color(0XFF033F42),
                  ),
              // filled: true,
              // fillColor: Color(0xffF0F3F6),
              suffixIcon: InkWell(
                onTap: () {
                  // controller.togglePasswordVisibility();
                },
                child: Transform.scale(
                  scale: 0.8,
                  child: isPassword
                      ? SvgPicture.asset('assets/Eye.svg')
                      : SizedBox(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
