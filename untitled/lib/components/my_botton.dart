import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class my_button extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const my_button({super.key,
   required this.text,
   required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width *.8,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffFFD973),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),

          padding: const EdgeInsets.symmetric(horizontal: 15),


        ),child: Text(text),
      ),
    );
  }
}
