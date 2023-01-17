/*

You are given an array (which will have a length of at least 3, but could be very large) containing integers. The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. Write a method that takes the array as an argument and returns this "outlier" N.

[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

*/


void main(List<String> args) {
  find([160, 3, 1719, 19, 11, 13, -21]);
}

int find(List integers) {
  int evenCount = 0;
  int oddCount = 0;
  int evenResult = 0;
  int oddResuld = 0;
  for(var i in integers){
    if(i % 2 != 0){
      evenCount ++;
      evenResult = i;
    }else{
      oddCount ++;
      oddResuld = i;
    }
  }

  return evenCount > oddCount ? oddResuld : evenResult ;
}