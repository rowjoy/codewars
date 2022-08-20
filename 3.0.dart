/* 
You are going to be given a word. Your job is to return the middle
character of the word. If the word's length is odd, return
the middle character. If the word's length is even, return 
the middle 2 characters.

#Examples:

Kata.getMiddle("test") should return "es"

Kata.getMiddle("testing") should return "t"

Kata.getMiddle("middle") should return "dd"

Kata.getMiddle("A") should return "A"


*/


void main() {

getMiddle("Abcdefg");
  
}
 
String  getMiddle(String s) {
  //Code goes here!
  List a = s.split("");
  var b = a.length;
  List main = [];
  if(b % 2 == 0){
     // If the word's length is even
    var c =  b / 2;
    var d = c.floor();
    var e = d -1;
    var f = a[e];
    var g = a[d];
    var h = f + g ;
    main.add(h);
   
    
  }else{
    // If the word's length is odd
    var c =  b / 2 ;
    var d = c.floor();
    var e = a[d];
    main.add(e);
    
  }

  return main.join();
}