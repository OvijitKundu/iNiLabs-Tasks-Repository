<?php

class Employee {
    private $name;
    private $salary;

    public function setName($name) {
        $this->name = $name;
    }

    public function getName() {
        return $this->name;
    }

    public function setSalary($salary) {
        $this->salary = $salary;
    }

    public function getSalary() {
        return $this->salary;
    }
}

$employee = new Employee();
$employee->setName("John Doe");
$employee->setSalary(50000);

echo "Employee Name: " . $employee->getName() . PHP_EOL;
echo "Employee Salary: ৳" . number_format($employee->getSalary(), 2);