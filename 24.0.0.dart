/*

Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that checks whether the two arrays have the "same" elements, with the same multiplicities (the multiplicity of a member is the number of times it appears). "Same" means, here, that the elements in b are the elements in a squared, regardless of the order.

Examples
Valid arrays
a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a, b) returns true because in b 121 is the square of 11, 14641 is the square of 121, 20736 the square of 144, 361 the square of 19, 25921 the square of 161, and so on. It gets obvious if we write b's elements in terms of squares:

a = [121, 144, 19, 161, 19, 144, 19, 11] 
b = [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
Invalid arrays
If, for example, we change the first number to something else, comp is not returning true anymore:

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [132, 14641, 20736, 361, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 132 is not the square of any number of a.

a = [121, 144, 19, 161, 19, 144, 19, 11]  
b = [121, 14641, 20736, 36100, 25921, 361, 20736, 361]
comp(a,b) returns false because in b 36100 is not the square of any number of a.

Remarks
a or b might be [] or {} (all languages except R, Shell).
a or b might be nil or null or None or nothing (except in C++, COBOL, Crystal, D, Dart, Elixir, Fortran, F#, Haskell, Nim, OCaml, Pascal, Perl, PowerShell, Prolog, PureScript, R, Racket, Rust, Shell, Swift).
If a or b are nil (or null or None, depending on the language), the problem doesn't make sense so return false.

Note for C
The two arrays have the same size (> 0) given as parameter in function comp.

 */





void main(List<String> args) {
  comp([121, 144, 19, 161, 19, 144, 19, 11, 1008],[121, 14641, 20736, 36100, 25921, 361, 20736, 361]);
}


bool comp(List a, List b) {
  List x = [];
  if (a.isEmpty || b.isEmpty) return true;
  List aSquared = a.map((e) => e * e).toList();
  aSquared.sort();
  b.sort();
  print(aSquared);
  print(b);
  if(a.length == b.length){
     for(var i = 0; i <= b.length -1 ; i++){
     x.add(aSquared[i] == b[i]);
    };
  }else{
    x.add(a.length == b.length);
  }

  return x.where((element) => element.toString().contains(false.toString())).isEmpty;
}

bool comp1(List<int> a1, a2) {
  
  if (a1 == null || a2 == null || a1.length != a2.length) {
    return false;
  }
  
  for (final baseNumber in a1) {
    a2.remove(baseNumber*baseNumber);
  }
  
  return a2.length == 0;
}