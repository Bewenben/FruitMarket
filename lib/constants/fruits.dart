class Fruits {
  String name;
  String value;
  String image;
  String stars;
  bool trigger;

  Fruits(this.name, this.value, this.image, this.stars, this.trigger);
}

List<Fruits> gridorganicfruits = [
  Fruits("Strawberry", "\$ 300 Per/ kg", "assets/images/strawberry.png",
      "assets/icons/4stars.png", false),
  Fruits("Grapes", "\$ 160 Per/ kg", "assets/images/grapes.png",
      "assets/icons/5stars.png", false),
  Fruits("Oranges", "\$ 120 Per/ kg", "assets/images/oranges.png",
      "assets/icons/5stars.png", false),
];

List<Fruits> gridmixedfruits = [
  Fruits("Multi Fruits Pack", "\$ 350 Per/ kg", "assets/images/multifruit.png",
      "assets/icons/5stars.png", false),
  Fruits("Paper Fruits Pack", "\$ 230 Per/ kg", "assets/images/paperfruits.png",
      "assets/icons/3stars.png", false),
  Fruits("Tropicana", "\$ 140 Per/ kg", "assets/images/tropicanafr.png",
      "assets/icons/5stars.png", false),
];

List<Fruits> gridstonefruits = [
  Fruits("Nectarines", "\$ 250 Per/ kg", "assets/images/nectarines.png",
      "assets/icons/5stars.png", false),
  Fruits("Apricots", "\$ 180 Per/ kg", "assets/images/apricots.png",
      "assets/icons/5stars.png", false),
  Fruits("Peaches", "\$ 100 Per/ kg", "assets/images/peaches.png",
      "assets/icons/4stars.png", false),
];

List<Fruits> gridmelonfruits = [
  Fruits("Green Melon", "\$ 190 Per/ kg", "assets/images/melon1.png",
      "assets/icons/5stars.png", false),
  Fruits("Grey Melon", "\$ 80 Per/ kg", "assets/images/melon2.png",
      "assets/icons/3stars.png", false),
  Fruits("Pumpkin", "\$ 70 Per/ kg", "assets/images/melon3.png",
      "assets/icons/5stars.png", false),
];
