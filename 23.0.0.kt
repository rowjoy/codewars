
// fun main() {
//   println("Hello World"),
// }

fun main(){
    println("My name is joy");

    //Val cannot be reassigned
    val name = "joy";
    println(name);

    var userName = Name();
      userName.name = "Jamirul islam";
      println("${userName.name}");
    Student("Jamirul islam", 25);
    
}





class Name {
    var name : String = "Name";
}

class Student constructor (name : String , age : Int , ) {
    init{
     println("Name is $name " + "My age  $age");
    }
}