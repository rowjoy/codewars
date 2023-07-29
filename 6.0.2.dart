// ignore_for_file: unused_local_variable

/* 

Given a positive number n > 1 find the prime factor decomposition of n. The result will be a string with the following form :

 "(p1**n1)(p2**n2)...(pk**nk)"
with the p(i) in increasing order and n(i) empty if n(i) is 1.

Example: n = 86240 should return "(2**5)(5)(7**2)(11)"

*/

void main() {
  primeFactors(782611830);
}

String primeFactors(int n) {
    List<int> result = [];
    int start = 2;
    String show = "";
    while (n != 1) {
      if(n % start == 0) {
        n = n ~/ start;
        result.add(start);
      } else {
        start += 1;
      }
    }
    print(result);
    List _main = [];
    if(result.length > 1){
     for(var i in result){
       List _r =  result.where((element) => element.toString().contains(i.toString())).toList();
       if(_r.length < 2){
         var a = "(${_r.first})";
         _main.add(a);
       }else{
         num sum = _r.fold(0, (previous, current) => previous + current);
         if(sum % _r[0] == 0){
            var b = _r.length;
            var a = "(${_r[0]}**$b)";
            _main.add(a);
         }else{
           for(var i in _r){
              _main.add("($i)");
           }
         }
       }
     }
    }else{
      var _a = "(${result[0]})";
      _main.add(_a);
    }
    List o = [];
    List original = _main.toSet().toList();
    for(var i in result.toSet()){
      List _t = original.where((element) => element.toString().contains(i.toString())).toList();
      print(_t);
      show += _t[0];
    }
    print(show);
    return show;
}

/* Question : https://www.codewars.com/kata/54d512e62a5e54c96200019e/train/dart */