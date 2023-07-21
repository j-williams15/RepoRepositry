# Define a class representing a person
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def greet(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")

# Create some person objects
alice = Person("Alice", 28)
bob = Person("Bob", 35)
carol = Person("Carol", 42)

# An array of person objects
people = [alice, bob, carol]

# Greet each person
for person in people:
    person.greet()

# Define a class representing a book
class Book:
    def __init__(self, title, author, year, pages, is_available):
        self.title = title
        self.author = author
        self.year = year
        self.pages = pages
        self.is_available = is_available

    def print_info(self):
        print(f"Book: {self.title} by {self.author}, Published in {self.year}, Pages: {self.pages}")

# Create a book object
book = Book("Sample Book", "Mock Author", 2023, 300, True)

# Print book details
book.print_info()

# Define a class representing a car
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

    def get_info(self):
        return f"{self.year} {self.make} {self.model}"

# Create some car objects
car1 = Car("Toyota", "Corolla", 2022)
car2 = Car("Honda", "Civic", 2021)
car3 = Car("Ford", "Mustang", 2023)

# Get car information
print(car1.get_info())
print(car2.get_info())
print(car3.get_info())

# Execute some functions
def factorial(n):
    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)

# Example usage of the factorial function
print("Factorial of 5:", factorial(5))

# Demonstrate exception handling
try:
    raise Exception("Something went wrong!")
except Exception as ex:
    print("Exception caught:", ex)
