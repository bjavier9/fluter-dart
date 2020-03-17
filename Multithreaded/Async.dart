import 'dart:async';

void main() {
   print('The main UI thread is starting on here');
   print("Now it will take 10 seconds to display news headlines.");
 displayNews();
 print("The main UI thread ends.");
}
Future<String> checkingNewsApp() {
  Future<String> delayingTenSeconds = Future.
delayed(Duration(seconds: 10), (){
 return "The latest headlines are displayed here after 10 seconds.";
 });
 // after 10 seconds the news headlines will be displayed
 return delayingTenSeconds;
}
void displayNews() {
 // here we will primarily display the news headline
 Future<String> displayingNewsHeadlines = checkingNewsApp();
 // inside then we need an anonymous function like lambda or


 displayingNewsHeadlines.then((displayString){
 // it will give the future object
 print("Displaying news headlines here:$displayString");
 });
}
