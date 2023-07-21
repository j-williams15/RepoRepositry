# Define a class representing a person
class Person
    attr_accessor :name, :age
  
    def initialize(name, age)
      @name = name
      @age = age
    end
  
    def greet
      puts "Hello, my name is #{@name} and I am #{@age} years old."
    end
  end
  
  # Define a class representing a book
  class Book
    attr_accessor :title, :author, :year, :pages, :is_available
  
    def initialize(title, author, year, pages, is_available)
      @title = title
      @author = author
      @year = year
      @pages = pages
      @is_available = is_available
    end
  
    def print_info
      puts "Book: #{@title} by #{@author}, Published in #{@year}, Pages: #{@pages}"
    end
  end
  
  # Define a class representing a car
  class Car
    attr_accessor :make, :model, :year
  
    def initialize(make, model, year)
      @make = make
      @model = model
      @year = year
    end
  
    def get_info
      "#{@year} #{@make} #{@model}"
    end
  end
  
  # Create some person objects
  alice = Person.new("Alice", 28)
  bob = Person.new("Bob", 35)
  carol = Person.new("Carol", 42)
  
  # An array of person objects
  people = [alice, bob, carol]
  
  # Greet each person
  people.each(&:greet)
  
  # Create a book object
  book = Book.new("Sample Book", "Mock Author", 2023, 300, true)
  
  # Print book details
  book.print_info
  
  # Create some car objects
  car1 = Car.new("Toyota", "Corolla", 2022)
  car2 = Car.new("Honda", "Civic", 2021)
  car3 = Car.new("Ford", "Mustang", 2023)
  
  # Get car information
  puts car1.get_info
  puts car2.get_info
  puts car3.get_info
  
  # Execute some functions
  factorial = (1..5).reduce(:*)
  puts "Factorial of 5: #{factorial}"
  
  # Demonstrate exception handling
  begin
    raise "Something went wrong!"
  rescue => ex
    puts "Exception caught: #{ex.message}"
  end
  