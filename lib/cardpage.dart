import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:task1/finalpage.dart';
import 'package:task1/shoppingcartpage.dart';
import 'constants/constantdata.dart';

class buyerdetails extends StatelessWidget {
  const buyerdetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController namecontroller = TextEditingController();
    TextEditingController lastfourcontroller = TextEditingController();
    holderinfos[0].name = namecontroller.text;
    holderinfos[0].no4 = lastfourcontroller.text;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const shoppingcart()));
        } ,icon:Icon(Icons.arrow_back_ios_rounded), color: Colors.white,),
        backgroundColor: mBackgroundcolor,
        title: Text('Add your Card', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            height: 170, width: 240, child: Image.asset('assets/250-2504488_atm@4x.png',)),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(right: 245),
              child:Text('Cardholder Name', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.black.withOpacity(0.5)),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 11.0,right: 0),
              child: Container(
                width: 370,
                child: TextField(
                  autofocus: false,
                  controller: namecontroller,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.grey),),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1, color: Colors.grey),),
                    hintText: "Enter the Cardholder name",
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.1)
                    ),
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 275),
              child: Text('Card Number', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black.withOpacity(0.5)),),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 40,
                  child: TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      hintText: "****",
                      filled: true,
                      fillColor: Colors.white,
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.1)
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 80,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      hintText: "****",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.1)
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 80,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      hintText: "****",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.1)
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 80,
                  height: 40,
                  child: TextField(
                    controller: lastfourcontroller,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      hintText: "****",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.1)
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 290),
              child: Text('Valid Time', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15, color: Colors.black.withOpacity(0.5)),),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12,),
                  child: Container(
                    width: 240,
                    child: TextField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.grey),),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.grey),),
                        hintText: "Month",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(.1)
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Container(
                  width: 110,
                  child: TextField(
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(width: 1, color: Colors.grey),),
                      hintText: "Year",
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(.1)
                      ),
                      fillColor: Colors.white,
                      filled: true,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 295),
              child: Text('CVV/CVC', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black.withOpacity(0.5)),),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15,),
                  child: Container(
                    width: 150,
                    child: TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(width: 1, color: Colors.grey),),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 1, color: Colors.grey),),
                        hintText: "CVV/CVC",
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black.withOpacity(.1)
                        ),
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                Text('3 or 4 digit code', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black.withOpacity(0.3)),),
              ],
            ),
            SizedBox(height: 60,),
            ButtonTheme(
              minWidth: 370,
              height: 45,
              child: RaisedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> paymentpage(number: lastfourcontroller.text)));
              },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: mBackgroundcolor,
                child: Text("ADD CARD NUMBER",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 15,),),
                elevation: 10.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}