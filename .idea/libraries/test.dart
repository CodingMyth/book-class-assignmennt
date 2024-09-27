class Car {

  String brand;
  String model;
  int year;


  Car(this.brand, this.model, this.year);


  int carAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {

  Car myCar = Car('Toyota', 'Corolla', 2015);

  // Display the car's details and calculated age
  print('Brand: ${myCar.brand}');
  print('Model: ${myCar.model}');
  print('Year: ${myCar.year}');
  print('Car Age: ${myCar.carAge()} years');
}
