void main(){
  List<String> list =['shakib','rahin','sonjoy'];
   print(list);

   var first = list.first;
   var rev = list.reversed;
   print(rev);

   list.addAll(['ss','sss']);
   list.insertAll(3,['os','sssdfw']);

   list.removeAt(1);
   list.remove(list.first);
   list.replaceRange(1,2,['shakib']);
   list[2];





}