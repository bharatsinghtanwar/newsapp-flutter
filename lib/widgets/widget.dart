import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Text('Message App')
  );
}

InputDecoration textFiledInputDecoration(String hintText){
  return  InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  fillColor: Colors.brown[200],
                  filled: true,
                  
                  

                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.brown, width: 2)),
                  hintText: hintText,
                  

                  
                  border: OutlineInputBorder(
                  
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 2
                       
                      )),

                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ));
}