/*

Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

Rules for a smiling face:

Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
Every smiling face must have a smiling mouth that should be marked with either ) or D
No additional characters are allowed except for those mentioned.

Valid smiley face examples: :) :D ;-D :~)
Invalid smiley faces: ;( :> :} :]

Example
countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;

*/

void main() {
  countSmileys([';D', ':-(', ':-)', ';~)']);
}

int countSmileys(List<String> arr) {
  int count = 0;
  List validSmileys = [':)', ';)', ':D', ';D', ':-)', ';-)', ':-D', ';-D', ':~)', ';~)', ':~D', ';~D'];
  for ( int i = 0; i < arr.length; i++) {
    if (validSmileys.contains(arr[i])) {
      count++;
    }
   
  }
  return count;
}

int buttonPresses(String words) {
  int presses = 0;
  List<List<int>> keyboard = [
    [0, 1, 2, 3, 4, 5, 6, 7],
    [8, 9, 10, 11, 12, 13, 14, 15],
    [16, 17, 18, 19, 20, 21, 22, 23],
    [24, 25, 26, 27, 28, 29, 30, 31],
    [32, 33, 34, 35, 36, 37, 38, 39],
  ];
  List<int> positions = [0, 4, 8, 12, 16, 20, 24, 28, 32, 36];
  int row = 0;
  int col = 0;
  bool isUppercase = false;

  for (int i = 0; i < words.length; i++) {
    String char = words[i];
    int target;
    if (char == ' ') {
      target = 33;
    } else if (char == char.toUpperCase()) {
      target = positions[char.toLowerCase().codeUnitAt(0) - 97];
      isUppercase = true;
    } else {
      target = positions[char.codeUnitAt(0) - 97];
      isUppercase = false;
    }

    int targetRow = 0;
    for (int j = 0; j < keyboard.length; j++) {
      if (keyboard[j].contains(target)) {
        targetRow = j;
        break;
      }
    }

    presses += (row - targetRow).abs() + (col - keyboard[targetRow].indexOf(target)).abs() + 1;
    row = targetRow;
    col = keyboard[targetRow].indexOf(target);
    if (isUppercase) {
      presses++;
    }
  }

  return presses;
}

