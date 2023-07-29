// ignore_for_file: unused_local_variable, unnecessary_null_comparison



void main() {
 List data = [50,79,2,3,8,5];
 getSortingList(data);
}

// sorting a list in dart 

void getSortingList (List data){
  var length = data.length;
  for(var i = 0; i < length - 1; i++){
     int mainIndex = i;
     for(var j = i +1; j < length; j++){
        
     }
  }
}


























// get big number in list 
void getBigNumber (List data){
  var length = data.length;
  var maxNumber = data[0];
  for(var i = 0; i < length; i++){
     if(data[i] > maxNumber){
       maxNumber = data[i];
     }
  }
  print(maxNumber);
}

// get small number in list 
void getSmallNumber (List data){
  var length = data.length;
  var smallNumber = data[0];
  for(var i = 0; i < length; i++){
    if(data[i] < smallNumber){
       smallNumber = data[i];
    }
  }
  print(smallNumber);
}


















//

// sorting in list 
/*
void main (){
   List data = [6,7,8,5,43,34,6,76,1,];
  for(int i = 0; i < data.length - 1 ; i++){
    int mainIndex = i;
    for(int j = i + 1; j < data.length; j++){
       if(data[j] < data[mainIndex]){
         mainIndex = j;
       }
    }

    if(mainIndex != i){
      int temp = data[i];
      data[i] = data[mainIndex];
      data[mainIndex] = temp;
    }
  }
  print(data);
}
*/

// Search big number in list 
/*
void main() {
  List data = [ 15, 1, 2, 4 ,3, 6, 5 ,9];
  int mxNumber = data[0];
  for(var i = 1; i < data.length ; i++){
     if(data[i] > mxNumber){
        mxNumber = data[i];
     }
  }

  print(mxNumber);
}
*/