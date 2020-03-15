class Cart {
  Function addingTwoItems=(int item1, int item2){
    var sum = item1+item2;
    return sum;
  };
  Function ourReturnPolicy =(String messageToCustomer){
    return messageToCustomer;
  };
  var returnUpdateCustomer = (String updateCustomer)=>updateCustomer;
}

main(List<String> args) {
  var cart = Cart();
  print('Your total price is ');
  print(cart.addingTwoItems(1234,2356));
  print(cart.ourReturnPolicy("Please read our return policy"));
  print(cart.returnUpdateCustomer("Your item has been shipped."));
}