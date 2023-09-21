import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PatientListItem extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PatientListItem({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xffFAB915), // Yellow container background color
      borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: ListTile(
          title: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            CupertinoIcons.right_chevron,
            color: Colors.white,
          ),
          onTap: onPressed,
        ),
      ),
    );
  }
}
