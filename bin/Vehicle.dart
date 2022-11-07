class Vehicle{
    late String model;
    late int year;

    Vehicle(this.model, this.year);
    void hh(){

    }
}
class Car extends Vehicle{
  late double price;

  Car(this.price,super.model,super.year);

  // Car(this.price,String model,int year) : super(model,year);
  @override
  void hh(){
    super.hh();
  }

}