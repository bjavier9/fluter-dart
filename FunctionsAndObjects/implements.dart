class CheckHTTPS {
  String urlCheck;
  CheckHTTPS(this.urlCheck);
  String myMethod()=>"${urlCheck} este es un metodo.";
  bool checkUrl(String urlCheck){
    if(this.urlCheck.contains("https")){
      return true;
    }else return false;
  }
}

main() {
  var newURL=CheckHTTPS('http://google');

print(newURL.myMethod());
   if(!newURL.checkUrl(newURL.urlCheck)){
     print("The url ${newURL.urlCheck} is not secure.");
   }
}