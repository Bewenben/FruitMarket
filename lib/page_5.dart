//import 'dart:js';


import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fruitmarket2/keyboard.dart';
import 'package:fruitmarket2/page_1.dart';
import 'package:fruitmarket2/page_3.dart';
import 'package:fruitmarket2/page_6.dart';



class page_5 extends StatelessWidget
{
  page_5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height5 = MediaQuery.of(context).size.height;
    double width5 = MediaQuery.of(context).size.width;

    Timer(const Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => page_6()));
    }

    );

    return Scaffold(
        body: Padding(
          padding:  EdgeInsets.only(top: height5*.18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.only(top:height5*.1,left: width5*.08),
                child: const Icon(Icons.check_circle_outline_rounded,size: 200,color: green,),
              ),
             // Image.asset("images/done.png",height: height5*.4,width: width5*.1,),
              Padding(
                padding:  EdgeInsets.all(width5*.12),
                child: const Text("Verification Successful",style:TextStyle(color: Colors.black,fontSize: 25) ,),
              )
            ],
          ),
        )


    );
  }
  }