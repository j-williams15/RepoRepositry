#include <iostream>
#include <vector>
#include <string>

// Define a class representing a person
class Person {
public:
    std::string name;
    int age;

    void greet() {
        std::cout << "Hello, my name is " << name << " and I am " << age << " years old." << std::endl;
    }
};

// Define a class representing a book
class Book {
public:
    std::string title;
    std::string author;
    int year;
    int pages;
    bool isAvailable;

    void print() {
        std::cout << "Book: " << title << " by " << author << ", Published in " << year << ", Pages: " << pages << std::endl;
    }
};

// Define a class representing a car
class Car {
public:
    std::string make;
    std::string model;
    int year;

    std::string getInfo() {
        return std::to_string(year) + " " + make + " " + model;
    }
};

int main() {
    // Create some person objects
    Person alice;
    alice.name = "Alice";
    alice.age = 28;

    Person bob;
    bob.name = "Bob";
    bob.age = 35;

    Person carol;
    carol.name = "Carol";
    carol.age = 42;

    // An array of person objects
    std::vector<Person> people = { alice, bob, carol };

    // Greet each person
    for (const auto& person : people) {
        person.greet();
    }

    // Create a book object
    Book book;
    book.title = "Sample Book";
    book.author = "Mock Author";
    book.year = 2023;
    book.pages = 300;
    book.isAvailable = true;

    // Print book details
    book.print();

    // Create some car objects
    Car car1;
    car1.make = "Toyota";
    car1.model = "Corolla";
    car1.year = 2022;

    Car car2;
    car2.make = "Honda";
    car2.model = "Civic";
    car2.year = 2021;

    Car car3;
    car3.make = "Ford";
    car3.model = "Mustang";
    car3.year = 2023;

    // Get car information
    std::cout << car1.getInfo() << std::endl;
    std::cout << car2.getInfo() << std::endl;
    std::cout << car3.getInfo() << std::endl;

    // Execute some functions
    int factorialResult = 1;
    for (int i = 1; i <= 5; i++) {
        factorialResult *= i;
    }
    std::cout << "Factorial of 5: " << factorialResult << std::endl;

    // Demonstrate exception handling
    try {
        throw std::runtime_error("Something went wrong!");
    } catch (const std::exception& ex) {
        std::cout << "Exception caught: " << ex.what() << std::endl;
    }

    return 0;
}
