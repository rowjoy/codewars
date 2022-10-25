void main() {
  
}

String bool_to_word(bool boolean) {
  // your code goes here
  String _a = "";
  if (boolean == true){
      _a = "Yes";
  }else if (boolean == false){
    _a = "No";
  }
  return _a;
}


String data (String str){
 return str.toUpperCase();
}