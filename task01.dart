import 'dart:io';

// For one item 
// void main() {
//   var item = 'Biryani';
//   int itemPrice = 5000;

//   print("Enter Your Item name");
//   String name = stdin.readLineSync()!;

//   if (name == item) {
//     double discountedPrice = itemPrice - (itemPrice * 0.10);
//     print("Your total is $itemPrice but we will give you 10% discount $discountedPrice");
//   }
// }


// For more than one item 
//   void main() {
//   // Define items and their prices 
//   var items = {
//     'Biryani': 5000,
//     'Pizza': 800,
//     'Burger': 300,
//   };

//   print("Enter Your Item name");
//   String name = stdin.readLineSync()!;

//   // Check if the entered item exists in the map
//   if (items.containsKey(name)) {
//     int itemPrice = items[name]!;
//     double discountedPrice = itemPrice - (itemPrice * 0.10);
//     print("Your total is $itemPrice but we will give you a 10% discount. Final price: $discountedPrice");
//   } else {
//     print("Sorry, the entered item is not available.");
//   }
// }
