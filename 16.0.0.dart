/*

Scenario
Several people are standing in a row divided into two teams.
The first person goes into team 1, the second goes into team 2, the third goes into team 1, and so on.

Task
Given an array of positive integers (the weights of the people), return a new array/tuple of two integers, where the first one is the total weight of team 1, and the second one is the total weight of team 2.

Notes
Array size is at least 1.
All numbers will be positive.
Input >> Output Examples
rowWeights([13, 27, 49])  ==>  return (62, 27)
Explanation:
The first element 62 is the total weight of team 1, and the second element 27 is the total weight of team 2.

rowWeights([50, 60, 70, 80])  ==>  return (120, 140)
Explanation:
The first element 120 is the total weight of team 1, and the second element 140 is the total weight of team 2.

rowWeights([80])  ==>  return (80, 0)
Explanation:
The first element 80 is the total weight of team 1, and the second element 0 is the total weight of team 2.


 */

void main() {
  rowWeights([80]);
}

List<int> rowWeights(List<int> arr) {
  List _a = [];
  List _b = [];
  var _m = 0;
  var _n = 0;
  if (arr.length == 1){
    _m = arr[0];
    _n = 0;
  }else{
    for( var i = 0 ; i < arr.length ; i++ ){
      if(i % 2 == 0){
        _a.add(arr[i]);
      }else {
        _b.add(arr[i]);
      }
    }

     _m = _a.reduce((value, element) => value + element);
     _n = _b.reduce((value, element) => value + element);
  }

  return [_m, _n];
}