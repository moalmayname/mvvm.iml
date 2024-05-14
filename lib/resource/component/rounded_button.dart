
import 'package:flutter/material.dart';
import 'package:mvvm/utils/utils.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback onpress;
  final bool loading;

  const RoundedButton({super.key, required this.title, required this.onpress,  this.loading= false});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(color: Appcolor.ButtonCollor,
        borderRadius: BorderRadius.circular(15),),
        child:  Center(

          child:loading?CircularProgressIndicator(
            color: Colors.lightGreenAccent,
          ): Text(title,style: TextStyle(
            color: Appcolor.buttonTextColor,fontSize: 18
          ),),
        ),

      ),
    );
  }
}
