import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isClickable;

  RoundedButton({required this.onPressed, required this.text, this.isClickable = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      child: Container(
        height: MediaQuery.of(context).size.shortestSide * 0.125,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(

            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(MediaQuery.of(context).size.shortestSide * 0.15)),
              ),
            ),
            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.all(8)),
            backgroundColor: isClickable ? MaterialStateProperty.all<Color>(Colors.blue) : MaterialStateProperty.all<Color>(Colors.blueGrey),
          ),


          child: isClickable
              ? Text(text,
                  style: TextStyle(color: Colors.white, fontSize: MediaQuery.of(context).size.shortestSide * 0.04))
              : SizedBox(
                  height: 16,
                  width: 16,
                  child: CircularProgressIndicator(),
                ),
          onPressed: isClickable ? onPressed : null,
        ),
      ),
    );
  }
}
