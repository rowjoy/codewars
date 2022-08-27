void main() {
  getCount("aeiou");
}

int getCount(String inputStr){
  List _v = ["a", "e", "i", "o","u"];
  List _s = inputStr.split("");
  List _y = [];
  for(var i in _v){
  List _x =   _s.where((element) => element.toString().toLowerCase().contains(i.toString().toLowerCase())).toList();
    _y += _x;
  }
  //your code here
  return _y.length;
}

int getCount1(String str) => new RegExp('[aeiou]').allMatches(str).length;