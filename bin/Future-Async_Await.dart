 void main(){

  print("p-1");
  show();
  print("p-3");
}
Future<void>show() async{
  await Future.delayed(
    Duration(seconds:2),
      ()=>
          print("p-2")

  );
}