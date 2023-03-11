void main() {
  for(var i = 0; i <=10; i++){
    print("For dcriment $i");
  }

  for(var i = 10; i >=0; i--){
    print("Down $i");
  }

  var x = 5;
  do{
    print("DoLoop$x");
    x--;
  }while(x >= 0);



  var up = 0;
  do{
    up++;
    print("Up$up");
  }while(up <= 10);


  var num = 5; 
   var factorial = 1; 
   
   while(num >=1) { 
      factorial = factorial * num; 
      num--; 
   }

   
  var grade = "A"; 
   switch(grade) { 
      case "A": {  print("Excellent"); } 
      break; 
     
      case "B": {  print("Good"); } 
      break; 
     
      case "C": {  print("Fair"); } 
      break; 
     
      case "D": {  print("Poor"); } 
      break; 
     
      default: { print("Invalid choice"); } 
      break; 
   } 
}

