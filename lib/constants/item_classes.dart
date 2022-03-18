class OrderItem{
  late String name, imageURL;
  OrderItem(this.name, this.imageURL);
}

class FavItem{
  late String name, imageURL;
  int price,count,mult;
  FavItem(this.name, this.price, this.imageURL, this.count,this.mult);
}

class TodayItems{
  late String name, description, time, imageURL;
  TodayItems(this.name, this.description, this.time, this.imageURL);
}
