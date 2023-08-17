class Car{
  late String brand;
  late String model;
  late int year;
  late double milesDriven ;
  static int numberOfCars = 0 ;

  Car(this.brand,this.model,this.year){
    milesDriven = 0 ;
    numberOfCars++;
  }
  void drive(double miles){
    milesDriven+=miles;
  }
  double get getMilesDriven => milesDriven;
  String get getBrand => brand;
  String get getModel => model;
  int get getYear => year;
  int getAge (){
    int currYear = 2023;
    return currYear-year;
  }
}

void main(){
  Car car1 = Car("Toyota", "Camry", 2020);
  Car car2 = Car("Honda", "Civic", 2018);
  Car car3 = Car("Ford", "F-150", 2015);
  car1.drive(10200);
  car2.drive(8200);
  car3.drive(50100);

  print("Car 1: ${car1.getBrand} ${car1.getModel} ${car1.getYear} Miles: ${car1.getMilesDriven} Age: ${car1.getAge()}");
  print("Car 2: ${car2.getBrand} ${car2.getModel} ${car2.getYear} Miles: ${car2.getMilesDriven} Age: ${car2.getAge()}");
  print("Car 3: ${car3.getBrand} ${car3.getModel} ${car3.getYear} Miles: ${car3.getMilesDriven} Age: ${car3.getAge()}");

  print("Total number of cars created: ${Car.numberOfCars.toString()}");
}
