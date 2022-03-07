class Devise {
  String name;
  double ratio; // This ratio is based on the USD ratio ex: USD ratio = 1.0

  Devise(this.name, this.ratio) {}

  String getName() {
    return name;
  }

  double getRatio() {
    return ratio;
  }

  double calculateNewDevise(double money) {
    return (money * ratio);
  }
}
