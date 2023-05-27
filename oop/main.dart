
import 'app_class/inheritance.dart';
import 'app_class/phone_class_and_object.dart';

void main() {
  phoneDitails();
}
















void phoneDitails (){
  // this is smartphone class instance name phoneDetails 
  var phonedetails = SmartPhone();
  phonedetails.displaySize = 3.0;
  print(phonedetails.displaySize);
  
  /*
  var callnow = AcessCall(078478465, "Jamirul");
  print(callnow.callNow()); // . is acess oparater 
  */

  var damcall = DamCall( 9346734967544, "jamirul islamff");
  print(damcall.callNow());

}