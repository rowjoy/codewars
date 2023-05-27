/*

Synchronous Operations:
Synchronous operations are executed in a sequential manner, 
meaning that each operation blocks the execution of the program until it completes. In Dart, you can perform synchronous operations using normal function calls without any special syntax. Here's an example of synchronous code:


 */

//Synchronous Operations:
// void printNumbers() {
//   for (int i = 0; i < 5; i++) {
//     print(i);
//   }
// }

// void main()  async{
//   print('Before');
//    printNumbers();
//   print('After');
// }



/*

Asynchronous Operations:
Asynchronous operations are used when you want to perform tasks without blocking the execution of the program. Dart provides asynchronous programming support using async and await keywords. Here's an example of asynchronous code:
*/

import 'dart:async';

Future<int> fetchNumber() async {
  await Future.delayed(Duration(seconds: 2)); // Simulating a time-consuming task
  return 42;
}

void main() async {
  print('Before');
  int number = await fetchNumber();
  print('After: $number');
  print("Watting");
}



