class Vegetables {
  String name;
  String value;
  String image;
  String stars;
  bool trigger;

  Vegetables(this.name, this.value, this.image, this.stars, this.trigger);
}

List<Vegetables> gridorganicvegetables = [
  Vegetables("Broccoli", "\$ 190 Per/ kg", "assets/images/broccoli.png",
      "assets/icons/5stars.png", false),
  Vegetables("Bringels", "\$ 80 Per/ kg", "assets/images/brinjels.png",
      "assets/icons/3stars.png", false),
  Vegetables("Corriander", "\$ 70 Per/ kg", "assets/images/corriander.png",
      "assets/icons/5stars.png", false),
];

List<Vegetables> gridmixedvegetables = [
  Vegetables("Multi Vegetables", "\$ 370 Per/ kg",
      "assets/images/multivegetables.png", "assets/icons/5stars.png", false),
  Vegetables("Paper Vegetables", "\$ 270 Per/ kg",
      "assets/images/papervegetables.png", "assets/icons/4stars.png", false),
  Vegetables("Tropicana", "\$ 180 Per/ kg", "assets/images/tropicanavg.png",
      "assets/icons/3stars.png", false),
];

List<Vegetables> gridalliumvegetables = [
  Vegetables("Onion", "\$ 130 Per/ kg", "assets/images/onions.png",
      "assets/icons/5stars.png", false),
  Vegetables("Garlic", "\$ 100 Per/ kg", "assets/images/garlic.png",
      "assets/icons/4stars.png", false),
  Vegetables("Ginger", "\$ 180 Per/ kg", "assets/images/ginger.png",
      "assets/icons/5stars.png", false),
];

List<Vegetables> gridrootvegetables = [
  Vegetables("Carrot", "\$ 190 Per/ kg", "assets/images/carrot.png",
      "assets/icons/5stars.png", false),
  Vegetables("Turnip", "\$ 80 Per/ kg", "assets/images/vg2.png",
      "assets/icons/3stars.png", false),
  Vegetables("Potatoes", "\$ 70 Per/ kg", "assets/images/vg3.png",
      "assets/icons/5stars.png", false),
];
