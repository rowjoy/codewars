

// ignore_for_file: unused_local_variable

/*Write a function that takes an array of numbers and returns the sum of the numbers. 
The numbers can be negative or non-integer. If the array does not contain any
numbers then you should return 0. */

/* 
Examples
Input: [1, 5.2, 4, 0, -1]
Output: 9.2

Input: []
Output: 0

Input: [-2.398]
Output: -2.398

*/
void main() {
 List a = [1, 5.2, 4, 0, -1];
 num p = 0;
 num n = 0;
 num answer = 0;
 for(var i in a){
   if(i > 0){
     p+= i;
   }else{
     n+= i;
   }
 }
 answer = p - n.abs();
}