void getData() async{
  await Future.delayed(Duration(seconds: 3), (){
    print('first statement.');
  });
  Future.delayed(Duration(seconds: 4), (){
    print('second statement.');
  });
}

void main() {
  getData();
  print('third statement.');
}
