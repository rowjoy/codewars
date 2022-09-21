/*
Given the triangle of consecutive odd numbers:

             1
          3     5
       7     9    11
   13    15    17    19
21    23    25    27    29
...
Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)

1 -->  1
2 --> 3 + 5 = 8

*/

import 'dart:math';

void main() {
  rowSumOddNumbers(101);
}

int rowSumOddNumbers(int n) {
  var odd = [];
  var starts = (n * n) - (n - 1);

  while(n > 0){
    odd.add(starts);
    starts += 2;
    n--;
  }

  int sum = odd.reduce((value, element) => value + element);
  print(sum);
  return sum;
}


num rowSumOddNumbers1(int n) {
  return pow(n, 3);
}


int rowSumOddNumbers12(int n) => n * n * n;