import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/cardpage.dart';

import 'constants/constantdata.dart';

class paymentpage extends StatefulWidget {
  const paymentpage({Key? key,required String number}) : super(key: key);

  @override
  _paymentpageState createState() => _paymentpageState();
}

class _paymentpageState extends State<paymentpage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController lastfourcontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(onPressed:(){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const buyerdetails()));
        } ,icon:Icon(Icons.arrow_back_ios_rounded), color: Colors.black,),
        backgroundColor: Colors.white,
        title: Text('Total Bill: ${(foodinfos[0].price*foodinfos[0].counts) + (foodinfos[1].price*foodinfos[1].counts) + (foodinfos[2].price*foodinfos[2].counts)} RS ', style: TextStyle(fontSize: 20,color: Colors.black),),

      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width: 30,),
                Icon(Icons.storefront_sharp,size: 30,),
                SizedBox(width: 15,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 30),
                      child: Text('Organic Fruit Shop', style: TextStyle(fontSize: 20),),
                    ),
                    Text('2 items: Delivery time 30 Min', style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 34,),
                Icon(Icons.pin_drop_sharp,size: 30,),
                SizedBox(width: 20,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 100),
                      child: Text('Home Address', style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(height: 3,),
                    Text('D Block Ram Nagar, Near Sai Petrol', style: TextStyle(fontSize: 15,color: Colors.grey),),
                    SizedBox(height: 3,),
                    Text('Pump Ring Road Nagpur-440001', style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                )
              ],
            ),
            SizedBox(height:20,),
            Container(
              height: 1,
              width: 350,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('Credit/Debit Cards', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                ),
                SizedBox(width: 70,),
                TextButton(onPressed: (){},child: Text("ADD NEW CARD", style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: mBackgroundcolor),)),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 30,),
                Icon(Icons.credit_card, size: 30,),
                SizedBox(width: 05,),
                Column(
                  children: [
                    Row(
                      children: [
                        Text('************', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text("${holderinfos[0].no4}", style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 3,),
                    Text('Manish Chutake', style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ],
                )
              ],
            ),
            SizedBox(height:10,),
            Container(
              height: 1,
              width: 350,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top:5, bottom: 8,right: 180),
              child: Text('Save and Pay via cards', style: TextStyle(fontSize: 15,color: Colors.grey),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Image.asset("assets/iconfinder__Mas@4x.png",scale: 3,),
                  SizedBox(width: 15,),
                  Image.asset("assets/Group 2785@4x.png",scale: 3,),
                  SizedBox(width: 15,),
                  Image.asset("assets/iconfinder__Vis@4x.png",scale: 3,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 205),
              child: Text('Wallet Method', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child:Image.asset("assets/phone-pe-1024x1@4x.png",scale: 4,),
                ),
                SizedBox(width: 10,),
                Text('Phone Pay', style: TextStyle(fontSize: 15,color: Colors.black),),
              ],
            ),
            SizedBox(height:10,),
            Container(
              height: 1,
              width: 350,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child:Image.asset("assets/Google-Pay-Logo@4x.png",scale: 4,),
                ),
                SizedBox(width: 10,),
                Text('Google Pay', style: TextStyle(fontSize: 15,color: Colors.black),),
              ],
            ),
            SizedBox(height:10,),
                Container(
                  height: 1,
                  width: 350,
                  color: Colors.grey.shade300,
                ),
            SizedBox(height: 10,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Image.asset("assets/paypal@4x.png",scale: 4,),
                ),
                SizedBox(width: 10,),
                Text('Pay Pal', style: TextStyle(fontSize: 15,color: Colors.black),),
              ],
            ),
            SizedBox(height: 20,),
            ButtonTheme(
              minWidth: 370,
              height: 45,
              child: RaisedButton(onPressed: (){},
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                color: mBackgroundcolor,
                child: Text("PAY NOW",style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold, fontSize: 15,),),
                elevation: 0.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
