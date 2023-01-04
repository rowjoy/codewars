/*
Consider a sequence u where u is defined as follows:

The number u(0) = 1 is the first one in u.
For each x in u, then y = 2 * x + 1 and z = 3 * x + 1 must be in u too.
There are no other numbers in u.
Ex: u = [1, 3, 4, 7, 9, 10, 13, 15, 19, 21, 22, 27, ...]

1 gives 3 and 4, then 3 gives 7 and 10, 4 gives 9 and 13, then 7 gives 15 and 22 and so on...

Task:
Given parameter n the function dbl_linear (or dblLinear...) returns the element u(n) of the ordered (with <) sequence u (so, there are no duplicates).

Example:
dbl_linear(10) should return 22

Note:
Focus attention on efficienc
*/

void main() {
  dblLinear(10);
}

int dblLinear(int n) {
  Set<int> uSet = {1}; // Set to store the values of u
  List<int> uList = [1]; // List to store the values of u in the order they are generated

  int x, y, z;
  int i = 0;
  while (uList.length <= n) {
    x = uList[i];
    y = 2 * x + 1;
    z = 3 * x + 1;
    if (!uSet.contains(y)) {
      uSet.add(y);
      uList.add(y);
    }
    if (!uSet.contains(z)) {
      uSet.add(z);
      uList.add(z);
    }
    i++;
  }

  print(uList[n]);
  return uList[n];
}