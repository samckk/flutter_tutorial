void main() {
  User userone = User(username: 'Luigi', age: 25);
  Superuser usertwo = Superuser(username: 'Apple', age: 36);
}
class User  {
  String username;
  int age;

  User({this.username, this.age});

  /* REPLACEABLE BY:
  User(String username, int age){
  this.username = username;
  this.age = age;
  */


  void login(){
    print('Welcome back.');
  }
}
class Superuser extends User {
  Superuser({String username, int age}) : super(username: username, age: age);
}

/*
User user = User(username: 'username1', age: 'age1');

OR:

User user = User('username1', 'age1');
 */