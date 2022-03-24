import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants/constantdata.dart';

class secondpage extends StatefulWidget {
  const secondpage({Key? key}) : super(key: key);

  @override
  _secondpageState createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_rounded),
        backgroundColor: mBackgroundcolor,
        title: Text('Shopping Cart', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5,),
          Row(
              children: [
                SizedBox(width: 5,),
                Icon(Icons.location_pin,size: 20,),
                SizedBox(width: 10,),
                Text("440001 Nagpur,Maharashtra", style: TextStyle(fontSize: 14),),
                SizedBox(width: 10,),
                Icon(Icons.arrow_downward,size: 20,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(onPressed: (){},child: Text("Change Address", style: TextStyle(fontSize: 14,color: Colors.lightBlue),)),
                ),
              ]
          ),
          Container(
            height: 500,
            width: 1000,
            child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(height: 6,thickness: 1,);
                },
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: foodinfos.length,
                itemBuilder: (context,index){
                  return Row(
                    children: [
                      SizedBox(width: 10,),
                      Container(
                        height: 150,
                        width: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage(foodinfos[index].pic)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30, left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(foodinfos[index].name,style: TextStyle(fontSize: 15),),
                            SizedBox(height: 5,),
                            Text(foodinfos[index].prevprice,style: TextStyle(decoration: TextDecoration.lineThrough,fontSize: 15,color: Colors.grey),),
                            SizedBox(height: 5,),
                            Text(foodinfos[index].newprice,style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 150,top: 20),
                            child: IconButton(onPressed: (){
                              foodinfos.remove(foodinfos[index]);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> secondpage()));
                            }, icon: Icon(Icons.restore_from_trash_outlined)),
                          ),
                          SizedBox(height: 40,width: 1,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 70,),
                              ButtonTheme(
                                  minWidth: 10,
                                  height: 35,
                                  child: RaisedButton(onPressed: (){setState(() {
                                    if(foodinfos[index].counts>1){
                                      foodinfos[index].counts--;
                                    }
                                  });}
                                    ,elevation: 0,color: Colors.white,child: Text("-", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 0.8),borderRadius: BorderRadius.circular(10)),)
                              ),
                              SizedBox(width: 5,),
                              Text("${foodinfos[index].counts}"),
                              SizedBox(width: 5,),
                              ButtonTheme(
                                  minWidth: 10,
                                  height: 35,
                                  child: RaisedButton(onPressed: (){setState(() {
                                    foodinfos[index].counts++;
                                  });}
                                    ,elevation: 0,color: Colors.white,child: Text("+", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black,width: 0.8),borderRadius: BorderRadius.circular(10)),)
                              ),
                              SizedBox(width: 5,),
                            ],
                          ),
                        ],
                      )
                    ],
                  );
                }),
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 10,),
              Text("Total-",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              SizedBox(width: 5,),
              Text("RS",style: TextStyle(fontSize: 20),),
              Text("${(foodinfos[0].price*foodinfos[0].counts) + (foodinfos[1].price*foodinfos[1].counts) + (foodinfos[2].price*foodinfos[2].counts)}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(width: 140,),
              ButtonTheme(
                  minWidth: 100,
                  height: 40,
                  child: RaisedButton(onPressed: (){} ,elevation: 0,color: mBackgroundcolor,child: Text("Place Order" ,style: TextStyle(color: Colors.white,fontSize: 15,),),shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black.withOpacity(.2)),borderRadius: BorderRadius.circular(5)),)
              ),
            ],
          )
        ],
      ),
    );

  }
}
