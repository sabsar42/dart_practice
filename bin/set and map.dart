import 'dart:html';

void main(){

  Map<int, Map<String,Map<int,int>>> m ={
    1 : {"sjalo":{10:01}},
    1 : {"sjalo":{10:01}},
    1 : {"sjalo":{10:01}}
  };

  m.forEach((key, value) {
    print(key);
    print(value);
  });


  Set<String> s ={
    'ab', 'ss','sssasa'
  };

 for(var e in s){
   print(e);
 }


}
