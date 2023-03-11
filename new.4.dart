
import 'dart:convert';

void main() {
 // sortDiagonally(["ab", "12"]);
  checkbyte("joy");
}

List<String> sortDiagonally(List<String> arr) {
  if (arr.isEmpty || arr.length == 0 || arr.length != arr[0].length) return [];

  arr.sort();
  print(arr);
  int n = arr.length;
  List<String> result = List.generate(n * 2 - 1, (_) => '');
  print(result);
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      result[i + j] += arr[i][j];
    }
  }
  print(result);
  return result;
}

void checkbyte (dynamic data){
 List<int> bytes = utf8.encode(data);
  print(bytes);
  var y = utf8.decode(bytes);
  print(y);
  var _x = base64Encode(bytes);
  print(_x);
  var _y = base64Decode(_x);
  print(_y);
  var t = utf8.decode(_y);
  print(t);
}
