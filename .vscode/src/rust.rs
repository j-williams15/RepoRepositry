// Define a struct representing a person
struct Person {
    name: String,
    age: u32,
}

impl Person {
    fn new(name: &str, age: u32) -> Person {
        Person {
            name: name.to_string(),
            age,
        }
    }

    fn greet(&self) {
        println!("Hello, my name is {} and I am {} years old.", self.name, self.age);
    }
}

// Create some person objects
let alice = Person::new("Alice", 28);
let bob = Person::new("Bob", 35);
let carol = Person::new("Carol", 42);

// An array of person objects
let people = vec![alice, bob, carol];

// Greet each person
for person in &people {
    person.greet();
}

// Define a struct representing a book
struct Book {
    title: String,
    author: String,
    year: u32,
    pages: u32,
    is_available: bool,
}

impl Book {
    fn new(title: &str, author: &str, year: u32, pages: u32, is_available: bool) -> Book {
        Book {
            title: title.to_string(),
            author: author.to_string(),
            year,
            pages,
            is_available,
        }
    }

    fn print_info(&self) {
        println!(
            "Book: {} by {}, Published in {}, Pages: {}",
            self.title, self.author, self.year, self.pages
        );
    }
}

// Create a book object
let book = Book::new("Sample Book", "Mock Author", 2023, 300, true);

// Print book details
book.print_info();

// Define a struct representing a car
struct Car {
    make: String,
    model: String,
    year: u32,
}

impl Car {
    fn new(make: &str, model: &str, year: u32) -> Car {
        Car {
            make: make.to_string(),
            model: model.to_string(),
            year,
        }
    }

    fn get_info(&self) -> String {
        format!("{} {} {}", self.year, self.make, self.model)
    }
}

// Create some car objects
let car1 = Car::new("Toyota", "Corolla", 2022);
let car2 = Car::new("Honda", "Civic", 2021);
let car3 = Car::new("Ford", "Mustang", 2023);

// Get car information
println!("{}", car1.get_info());
println!("{}", car2.get_info());
println!("{}", car3.get_info());

// Execute some functions
fn factorial(n: u32) -> u32 {
    if n == 0 || n == 1 {
        1
    } else {
        n * factorial(n - 1)
    }
}

// Example usage of the factorial function
println!("Factorial of 5: {}", factorial(5));

// Demonstrate error handling with Result
fn divide(a: f64, b: f64) -> Result<f64, String> {
    if b == 0.0 {
        Err("Cannot divide by zero!".to_string())
    } else {
        Ok(a / b)
    }
}

match divide(10.0, 2.0) {
    Ok(result) => println!("Division result: {}", result),
    Err(error) => println!("Error: {}", error),
}
