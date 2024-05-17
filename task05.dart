abstract class Animal {
  void makeSound();  // Abstract method
}

class Dog extends Animal {
  void makeSound() {
    print('Woof!');
  }
}

class Cat extends Animal {
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  var dog = Dog();
  var cat = Cat();

  dog.makeSound();  // Outputs: Woof!
  cat.makeSound();  // Outputs: Meow!
}
