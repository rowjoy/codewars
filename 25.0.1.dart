void main() {
  createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);
}

String createPhoneNumber(List numbers) {
  // result2 = str2.replaceAll(RegExp('[^0-9]'), '');
  //'(111) 111-1111'
  // Your code goes here
  var pin = numbers.getRange(0, 3).toString().replaceAll(RegExp("[^0-9]"), "");
  var pincode = numbers.getRange(3, 6).toString().replaceAll(RegExp("[^0-9]"), "");
  var pinNumber = numbers.getRange(6, 10).toString().replaceAll(RegExp("[^0-9]"), "");
  return "($pin) $pincode-$pinNumber";
}