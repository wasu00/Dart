// Importing dart:ffi library
import 'dart:ffi';

// Defining a base class Animal
class Animal {
  // Method to describe the number of eyes an animal has
  void eyes() {
    print("Two");
  }
}

// Defining a subclass Panther which inherits from Animal
class Panther extends Animal {
  // Method to describe the healing capabilities of a panther
  void healing() {
    print("has enhanced healing capabilities"); 
  }
}

// Defining a subclass Cheetah which inherits from Animal
class Cheetah extends Animal {
  // Method to describe the speed of a cheetah
  void fastest() {
    print("capable of reaching speeds of greater than 110 kilometers per hour in just over three seconds"); // Printing cheetah's speed
  }
}

// Defining a subclass Gorilla which inherits from Animal
class Gorilla extends Animal {
  // Method to describe the strength of a gorilla
  void strength() {
    print("Upper body strength"); 
  }
}

// Defining a subclass Bear which inherits from Animal
class Bear extends Animal {
  // Method to describe the hearing ability of a bear
  void hearing() {
    print("A bear's hearing ability is excellent"); 
  }
}

// Main function
void main() {
  // Creating an instance of Panther class
  Panther p = Panther();
  // Creating an instance of Bear class
  Bear b = Bear();
  
  // Calling methods of Panther class
  p.healing(); // Describing Panther's healing capabilities
  p.eyes(); // Describing Panther's number of eyes
  
  // Calling methods of Bear class
  b.hearing(); // Describing Bear's hearing ability
  b.eyes(); // Describing Bear's number of eyes
}
