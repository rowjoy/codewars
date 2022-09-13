/* 
Your task is to write a function called valid_spacing() or validSpacing() which checks if a string has valid spacing. The function should return either true or false (or the corresponding value in each language).

For this kata, the definition of valid spacing is one space between words, and no leading or trailing spaces. Words can be any consecutive sequence of non space characters. Below are some examples of what the function should return:

* 'Hello world'   => true
* ' Hello world'  => false
* 'Hello world  ' => false
* 'Hello  world'  => false
* 'Hello'         => true

Even though there are no spaces, it is still valid because none are needed:
* 'Helloworld'    => true
* 'Helloworld '   => false
* ' '             => false
* ''              => true



 */

void main() {
  valid_spacing('a');
}

bool valid_spacing(String text) {
  bool _a;
  if (text.isEmpty) {
    _a = true;
  } else if (text.contains(RegExp("  "))) {
    _a = false;
  } else if (text.split(" ").first.isEmpty) {
    _a = false;
  } else if (text.split(" ").last.isEmpty) {
    _a = false;
  } else {
    _a = true;
  }
  print(_a);
  return _a;
}

bool valid_spacing1(String text) {
  return text == text.trim() && !text.contains("  ");
}

bool valid_spacing2(String text) {
  return !RegExp(r"^\W|\W$|\W\W").hasMatch(text);
}
