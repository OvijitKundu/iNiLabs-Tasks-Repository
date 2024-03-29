<?php 

//Base Class
abstract class Animal {
    public function makeSound() {
        echo "Some generic sound\n";
    }
}

class Dog extends Animal {
    //Override the makeSound Method
    public function makeSound() {
        echo "The sound of Dog: Woof\n";
    }
}

class Cat extends Animal {
    //Override the makeSound Method
    public function makeSound() {
        echo "The sound of Cat: Meow\n";
    }
}

class Bird extends Animal {
    //Override the makeSound Method
    public function makeSound() {
        echo "The sound of Bird: Tweet\n";
    }
}


function letTheAnimalSpeak(Animal $animal) {
    $animal->makeSound();
}

$dog = new Dog();
$cat = new Cat();
$bird = new Bird();


letTheAnimalSpeak($dog);
letTheAnimalSpeak($cat);
letTheAnimalSpeak($bird);