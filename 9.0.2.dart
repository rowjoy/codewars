/*

You are given an odd-length array of integers, in which all of them are the same, except for one single number.

Complete the method which accepts such an array, and returns that single different number.

The input array will always be valid! (odd-length >= 3)

Examples
[1, 1, 2] ==> 2
[17, 17, 3, 17, 17, 17, 17] ==> 3

*/

void main() {
  stray(5);
}

int stray(numbers) {
  numbers.sort();
  int ans = (numbers[0] == numbers[1]) ? numbers.last : numbers.first;

  return ans;
}

int stray1(List<int> ns) {
  var base = ns[0] == ns[1] ? ns[0] : ns[2];
  return ns.firstWhere((n) => n != base);
}
