class Car {
  String? brand;
  String? model;
  String? color;
  int? year;
  int? currentSpeed;

  void accelerate(int increment) {
    currentSpeed = increment;
  }

  void display() {
    print("Brand: $brand");
    print("Model: $model");
    print("Color: $color");
    print("Year: $year");
    print("Current Speed: $currentSpeed km/h");
  }
}

void main() {
  Car myCar = Car();
  myCar.brand = "Toyota";
  myCar.model = "Corolla";
  myCar.color = "Blue";
  myCar.year = 2022;
  myCar.currentSpeed = 0;
  myCar.accelerate(30); // Accelerating by 30 km/h
  myCar.display();
}
  