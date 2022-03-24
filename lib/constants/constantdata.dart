import 'dart:ui';

Color mBackgroundcolor = const Color(0xff69a03a);

class foodinfo{
  late String name, prevprice,newprice,pic;
  late int price;
  int counts=1;
  foodinfo(this.name,this.prevprice,this.newprice,this.price,this.pic);
}

class holderinfo{
  late String name, no1,no2,no3,no4,month,year,cvv;
  holderinfo(this.name,this.no1,this.no2,this.no3,this.no4,this.month,this.year,this.cvv);
}

List<foodinfo> foodinfos = [
  foodinfo("Broccoli", "RS 190", "150 Per/kg",150,"assets/images (7) copy@4x.png"),
  foodinfo("Onion", "RS 260", "200 Per/kg",200,"assets/1908idea99lead_@4x.png"),
  foodinfo("Anjeer", "RS 250", "220 Per/kg",220,"assets/images (8)@4x.png"),
];

List<holderinfo> holderinfos=[
  holderinfo("", "", "", "", "", "", "", "10")
];

