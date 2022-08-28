
/*
  In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:

  make as few changes as possible.
  if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
  For example:

  solve("coDe") = "code". Lowercase characters > uppercase. Change only the "D" to lowercase.
  solve("CODe") = "CODE". Uppercase characters > lowecase. Change only the "e" to uppercase.
  solve("coDE") = "code". Upper == lowercase. Change all to lowercase.
  More examples in test cases. Good luck!

*/



void main() {
  solve("coDE");
}

String solve(String s) {
  // your code here
  List _a = s.split("");
  String _b = "";
  List _x = [];
  List _y = [];
  for(var i in _a){
    if(i.toString() == i.toString().toUpperCase()){
      _x.add(i);
    }else{
      _y.add(i);
    }
  }
  
  if(_x.length == _y.length){
    _b = _a.join().toLowerCase();
  }else if(_x.length > _y.length){
     _b = _a.join().toUpperCase();
  }else if(_x.length < _y.length){
     _b = _a.join().toLowerCase();
  }
  return "$_b";
}



String solve2(String str) {
  return RegExp(r'[A-Z]').allMatches(str).length >
          RegExp(r'[a-z]').allMatches(str).length
      ? str.toUpperCase()
      : str.toLowerCase();
}

String solve1(String s) => RegExp('[A-Z]').allMatches(s).length > RegExp('[a-z]').allMatches(s).length ? s.toUpperCase() : s.toLowerCase(); 