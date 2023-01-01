void main() {
  validParentheses("()')");
  // print(isValid('()'));              // prints true
  // print(isValid(')(()))'));          // prints false
  // print(isValid('('));               // prints false
  // print(isValid('(())((()())())'));  // prints true
}


bool validParentheses(String string) {
  final stack = <String>[];
  for (final i  in string.split('')) {
    if (i == '(') {
      stack.add(i);
    }
    else if (i == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

