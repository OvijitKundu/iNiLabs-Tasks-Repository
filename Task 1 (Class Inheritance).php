<?php 

abstract class Shape{
    abstract public function area();
}

// Circle class inheriting from Shape
class Circle extends Shape{
    private $radius;

    public function __construct($radius){
        $this->radius = $radius;
    }

    public function area(){
        return pi() * pow($this->radius, 2);
    }
}

// Rectangle class inheriting from Shape
class Rectangle extends Shape{
    private $length;
    private $width;

    public function __construct($length, $width){
        $this->length = $length;
        $this->width = $width;
    }

    public function area(){
        return $this->length * $this->width;
    }
}

$circle = new Circle(8);
echo "The area of Circle: " . $circle->area() . "\n";

$rectangle = new Rectangle(5, 7);
echo "The area of Rectangle: " . $rectangle->area() . "\n";