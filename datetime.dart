

void main() {
  dateTime();
}

dateTime (){
  DateTime dt1 = DateTime.parse("2018-02-27 10:09:00");
  DateTime dt2 = DateTime.parse("2018-02-27 10:09:00");

  if(dt2.isBefore(dt1)){
    print("isBefore");
  }else if (dt1.isAtSameMomentAs(dt2)){
    print("Same");
  }else if (dt1.isAfter(dt2)){
    print("isAfter");
  } else{
    print("Q");
  }

}