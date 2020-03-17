import 'dart:async';

void main() {
  print('10 segundos de espera');
  displayNews();
  print('termmino');
}

Future<String> checkingNewApps(){

  Future<String> delayingTenSecond = Future.delayed(
    Duration(seconds: 10),(){
      return 'Se mostrara despues de 10 segundos';
    }
  );
return delayingTenSecond;
}
void displayNews() async{
  String displayNewsHeadlines= await checkingNewApps();
  print('pantalla nueva cabecera aqui: $displayNewsHeadlines');
}
