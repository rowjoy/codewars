

void main() {
  squareSum([1, 2, 2]);
}

int squareSum(List numbers) {
  // your code here
  int sum = 0;
  for(int i in numbers){
      sum += i *i;
  }
  return sum;
  
}