class PhoneNumber {
   PhoneNumber(this.number, this.userName);
   int? number;
   String? userName;

    callNow (){
     print("Calling  $userName  $number");
   }
}

// inheritance 
class AcessCall extends PhoneNumber{
  // AcessCall(super.number, super.userName);
  AcessCall (int number, String userName ) : super(number, userName);
}

//override mathod s
class DamCall extends PhoneNumber {
  DamCall(int number, String userName): super(number, userName);
  @override
  callNow() {
    return super.callNow();
  }
}