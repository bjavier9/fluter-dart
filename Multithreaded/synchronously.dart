import 'dart:async';
void main() {
 
checkVersion();

} 

Future<String> checkingVersion(){
  Future<String> delayingTenSeconds = Future.delayed(Duration(seconds: 3)
  ,(){return 'The version 2.1 is displayed here after 3seconds';});
return delayingTenSeconds;
}

Future checkVersion() async{
    var version = await checkingVersion();
    try{
      print('Display version here: $version');
    }catch(e){
      return e;
    }
  }