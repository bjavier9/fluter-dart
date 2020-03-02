main() {
  bool primero = true;
  bool segundo = false;
  bool tercero = true;
  bool cuarto = false;
  var asignado;
  if(primero)print('chao');
  else print('bay');
  
    if(segundo)print('chao');
  else print('bay');
  
    if(tercero)print('chao');
  else print('bay');
  
    if(cuarto)print('chao');
  else print('bay');
asignado ??=asignado;
asignado=false;
print(asignado);

if(primero==asignado||segundo!=asignado)print('tas empanga');
else if(primero==asignado && segundo== asignado)print('segundo jaja');
else if(tercero)print('okey');
else if(cuarto)print('vale');  
 bool firstButtonTouch = true;
  var firstButtonUntouch;
 bool secondButtonTouch = false;
 bool thirdButtonTouch = true;
 bool fourthButtonTouch = false;
 firstButtonUntouch ??= firstButtonTouch;
 firstButtonUntouch = false;
 if (firstButtonUntouch == false || firstButtonTouch == true)
print("The giant is sleeping.");
 else if (thirdButtonTouch) print("You need to wake up the giant. Touch the first button.");
 else if(firstButtonTouch == true && firstButtonUntouch ==
false) print("The giant starts running.");
 else if (secondButtonTouch) print("To stop the giant please touch the second button.");
 else if((secondButtonTouch == true && thirdButtonTouch
== true) || fourthButtonTouch == false) print("The giant stops.");
 else if (thirdButtonTouch) print("You have not touched the second button.");
 else if (secondButtonTouch) print("Touch any button to start the game.");
 else if(thirdButtonTouch) print("The giant goes to sleep.");
 else if (firstButtonUntouch) print("You have not touched any button.");
 if(fourthButtonTouch) print("The giant wakes up.");
 else print("You have not touched any button.");  
}