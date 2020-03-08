class Bear {
  int collarID;
  Bear(this.collarID);
  Bear.firstContructor(this.collarID);
  Bear.secondContructor(this.collarID);
  void trackingBear(){
    String color;
    print("Tracking the bear with collar ID ${collarID}");

  }
}

main() {
 var bear1 = Bear(1);
 bear1.trackingBear();
 var bear2 = Bear.firstContructor(2);
 bear2.trackingBear();
 var bear3 = Bear.secondContructor(3);
 bear3.trackingBear();
}