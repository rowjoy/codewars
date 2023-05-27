class SmartPhone {
  // class property 
  //smartPhone is class name 
  // smartphone all data object or class proprty 
  String name = "Iphone";
  String? color = "Black";
  int phoneCamara = 4;
  double? displaySize = 6.7;
  int spker = 2;


// Syntactic sugar constructor 

SmartPhone({this.color, this.displaySize});



  int simCard = 2;
  int memoryCard = 1;
  String emiNumber = "HUYO^%(*0997e6";

// totalPrice is mathod 
 void totalPrice (){
   int sum = (spker + simCard + memoryCard) * 100;
    print(sum);
 }

}

class newVersion extends SmartPhone {


}