/* 
Given a positive nn > 1 find the prime factor
 decomposition of n. The result will be a string with the 
 following form :

 "(p1**n1)(p2**n2)...(pk**nk)"
with the p(i) in increasing order and n(i) empty if n(i) is 1.

Example: n = 86240 should return "(2**5)(5)(7**2)(11)"


*/



void main() {
  primeFactors(342217392);
}

// String primeFactors(int n) {
//     List<int> result = [];
//     int start = 2;
//     String show = "";
//     while (n != 1) {
//       if(n % start == 0) {
//         n = n ~/ start;
//         result.add(start);
//       } else {
//         start += 1;
//       }
//     }
//     print(result);
//     List _main = [];
//     if(result.length > 1){
//      for(var i in result){
//        List _r =  result.where((element) => element.toString().contains(i.toString())).toList();
//        if(_r.length < 2){
//          var a = "(${_r.first})";
//          _main.add(a);
//        }else{
//          num sum = _r.fold(0, (previous, current) => previous + current);
//          if(sum % _r[0] == 0){
//             var b = _r.length;
//             var a = "(${_r[0]}**$b)";
//             _main.add(a);
//          }else{
//            for(var i in _r){
//               _main.add("($i)");
//            }
//          }
//        }
//      }
//     }else{
//       var _a = "(${result[0]})";
//       _main.add(_a);
//     }
//     List original = _main.toSet().toList();
//     for(var i in original){
//       show += i;
//     }
//     print(show);
//     return show;
// }

String primeFactors(int n) 
{
  String result = "";
  int i = 2;
  while (n > 1)
  {
    while (n % i == 0)
    {
      result += i.toString() + "*";
     
    }
    i++;
  }
  var  v = result.substring(0, result.length - 1);
  print(v);
  return result.substring(0, result.length - 1);
}



//'(2**4)(3)(11)(43)(15073)'

// public static String factors(int lst)
// {
//     var primes = new List<string>();
//     for (var n= 2; n<= lst; number++)
//     {
//         var count = 0;
//         while (lst % n== 0)
//         {
//             count++;
//             lst /= number;
//         }

//         if (count == 0) continue;
//         primes.Add(String.Format(count > 1 ? "({0}**{1})" : "({0})", number, count));
//     }

//     return String.Join("", primes);
// }


/*


Test Results:
fixed tests
Testing for: 
Log
7775460 

[2, 2]
[3, 3, 3]
[5]
[7, 17]
[11, 11]
[17]
Expected: '(2**2)(3**3)(5)(7)(11**2)(17)'
  Actual: '(2**2)(3**3)(5)(7**2)(11**2)(17)'
   Which: is different.
          Expected: ... 3**3)(5)(7)(11**2)(1 ...
            Actual: ... 3**3)(5)(7**2)(11**2 ...
                                  ^
           Differ at offset 17
Completed in 89ms
Testing for: 
Log
7919 

[7919]
[7919]
[7919]
[7919]
[7919]
[7919]
[7919]
[7919]
Expected: '(7919)'
  Actual: '(7919)(7919)(7919)(7919)(7919)(7919)(7919)(7919)'
   Which: is different. Both strings start the same, but the actual value also has the following trailing characters: (7919)(791 ...
Completed in 32ms
Testing for: 
Log
18195729 

[3, 31]
[677]
[17, 17, 677]
[17, 17]
[31]
[677]
[677]
[677]
Expected: '(3)(17**2)(31)(677)'
  Actual: '(3**2)(677)(17**3)(17**2)(31)(677)(677)(677)'
   Which: is different.
          Expected: (3)(17**2)(3 ...
            Actual: (3**2)(677)( ...
                      ^
           Differ at offset 2
Completed in 9ms
Testing for: 
Log
933555431 

[123863]
[7537, 123863]
[7537]
[123863]
[7537]
[123863]
[123863]
[123863]
[7537]
[123863]
[7537]
[123863]
[7537]
[123863]
[123863]
[123863]
[123863]
[7537]
[7537]
[123863]
[123863]
[123863]
[123863]
[7537]
[123863]
[123863]
[123863]
Expected: '(7537)(123863)'
  Actual: '(123863)(7537**2)(7537)(123863)(7537)(123863)(123863)(123863)(7537)(123863)(7537)(123863)(7537)(123863)(123863)(123863)(123863)(7537)(7537)(123863)(123863)(123863)(123863)(7537)(123863)(123863)(123863)'
   Which: is different.
          Expected: (7537)(1238 ...
            Actual: (123863)(75 ...
                     ^
           Differ at offset 1
Completed in 78ms
Testing for: 
Log
342217392 

[2, 2, 2, 2]
[3, 43, 15073]
[43]
[15073]
[15073]
[11]
[15073]
[43]
[15073]
[15073]
[15073]
[15073]
[15073]
[15073]
[15073]
Expected: '(2**4)(3)(11)(43)(15073)'
  Actual: '(2**4)(3**3)(43)(15073)(15073)(11)(15073)(43)(15073)(15073)(15073)(15073)(15073)(15073)(15073)'
   Which: is different.
          Expected: (2**4)(3)(11)(43)( ...
            Actual: (2**4)(3**3)(43)(1 ...
                            ^
           Differ at offset 8
Completed in 17ms
Completed in 225ms

 */