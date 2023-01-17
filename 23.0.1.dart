/*

Write a function that when given a number >= 0, returns an Array of ascending length subarrays.

pyramid(0) => [ ]
pyramid(1) => [ [1] ]
pyramid(2) => [ [1], [1, 1] ]
pyramid(3) => [ [1], [1, 1], [1, 1, 1] ]
Note: the subarrays should be filled with 1s

*/




void main(List<String> args) {
  pyramid(2);
}

List<List<int>> pyramid(int n) {
  List<List<int>> result = [];


  for(var i = 1; i <= n; i++){
    result.add(List.generate(i, (index) => 1));
  }
  return result;
  // your code here
}

List<List<int>> pyramid1(int n) {
  List<List<int>> pyramid = [];
  List<int> floor = [];
  
  for(var i = 1; i <= n; i++){
    if(n == 0) break; 
    floor.add(1);
    pyramid.add([...floor]);
  }
  
  return pyramid;
}

List<List<int>> pyramid2(int n) {
  List<int> array = [];
  List<List<int>> resArray = [];
  for (var i = 0; i < n; i++) {
    for (var j = 0; j <= i; j++) array.add(1);
    resArray.add(array);
    array = [];
  }
  return resArray;
}


