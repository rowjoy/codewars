/*

Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.

Square all numbers k (0 <= k <= n) between 0 and n.

Count the numbers of digits d used in the writing of all the k**2.

Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

Examples:
n = 10, d = 1 
the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.

nb_dig(25, 1) returns 11 since
the k*k that contain the digit 1 are:
1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
So there are 11 digits 1 for the squares of numbers between 0 and 25.


*/

void main(List<String> args) {
  nbDig(10, 1);
}

int nbDig(int n, int d) {
  var count = 0;
  for (var i = 0; i <= n; i++) {
    count += d.toString().allMatches((i * i).toString()).length;
  }
  print("count $count");
  return count;
}

int nbDig1 (int n, int d) {
  int result = 0;
  for (int i = 0; i <= n; i++) {
    (i * i).toString().split('').map(int.parse).forEach((e) {
      if (e == d) result++;
    });
  }
  return result;
}
