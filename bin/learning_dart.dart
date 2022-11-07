import 'dart:ffi';
import 'dart:math';

import 'dart:io';

import 'Rectangle.dart';

void main(List<String> arguments) {
  //Null Aware Operators (?.) (??) (??=)
  var rec;
  var width = rec?.getWidth();
  width??=10;
  print("Area = ${rec?.getArea()}");

  int x=100;
  var result = x%2==0?"Even":"Odd";
  result=result.toLowerCase();
  print(capitalize(result));
  //List
  List<int> numbers=[1,2,3,4,5];
  List<int> numbers2=[...numbers];
  List<int> numbers3=numbers;
  numbers2[0]=50;
  numbers3[3]=80;
  for (var element in numbers) {print(element);}
  print(numbers.runtimeType);
  printArray(numbers);
  printArray(numbers2);
  printArray(numbers3);

  print(numbers3 == numbers);

  //Set
  var numbersSet={1,2,3,4,5,6};
  numbersSet.add(6);
  print(numbersSet);

  //Maps

  var gifts={
    0:1,
    1:2,
    2:3,
    3:4,
    4:5,
  };
  print(gifts);
  gifts[5]=6;
  for(int i=0;i<gifts.length;i++){
    if(gifts.containsKey(i)){
      // print(gifts[i]);
    }
  }

  //dart functions
  print(area(6));
  double x1 = double.parse("5");
  print(x1);

  //try , catch block
  try{
    num a = num.parse("asd");
  }catch(e){
    print(e.runtimeType);
  }
  // Higher Order Function
  int y=4;
  hof(y, (y) =>{
    if(y>0){
      print("positive")
    }else{
      print("negative")
    }
  });

  //DateTime class
  var now = DateTime.now();
  print(now);
  print(now.add(Duration(days: 60)));

}
void printArray(var numbers){
  String cont="{";
  for(int i=0; i<numbers.length-1;i++){
    cont+="${numbers[i]}, ";
  }
  cont+="${numbers[numbers.length-1]}}";
  print(cont);
 
}
String capitalize(String a){
  String r="";
  r+=a[0].toUpperCase();
  for(int i=1;i<a.length;i++){
    r+=a[i];
  }
  return r;


}

dynamic area(var x,{var y}) => x*(y ?? 0);

//Throwing Exception in dart
void throwException(){
  throw FormatException;
}
//typedef keyword
typedef void ope(var num);
//Higher Order Function
void hof(var num ,ope fun ){
  fun(num);
}
