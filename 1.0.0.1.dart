//Write a function that doubles up each item in an array

//[1,2,3] >>= [2,4,6]



void main() {
  maps([1,2,3]);
  maps1([2,5,8,3]);

  
}


List<int> maps(List<int> arr) {
  // your code here
  int a = 0;
  List<int> b = [];
  for(var i in arr){
    a = i + i;
    b.add(a);
  }
  return b;
}

List<int> maps1(List<int> arr) {
  // your code here
  int a = 0;
  List<int> b = [];
  for(var i in arr){
    a = i + i;
    b.add(a);
  }
  return b;
}