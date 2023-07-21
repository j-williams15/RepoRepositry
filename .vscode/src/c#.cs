using System;

namespace MySecretNamespace
{
    // Define a class representing a person
    class Person : IPrintable
    {
        public string Name { get; set; }
        public int Age { get; set; }

        public void Greet()
        {
            Console.WriteLine($"Hello, my name is {Name} and I am {Age} years old.");
        }
    }

    // Define an interface for printable objects
    interface IPrintable
    {
        void Print();
    }

    // Define a class representing a book
    class Book : IPrintable
    {
        public string Title { get; set; }
        public string Author { get; set; }
        public int Year { get; set; }
        public int Pages { get; set; }
        public bool IsAvailable { get; set; }

        public void Print()
        {
            Console.WriteLine($"Book: {Title} by {Author}, Published in {Year}, Pages: {Pages}");
        }
    }

    // Define a class representing a car
    class Car
    {
        public string Make { get; set; }
        public string Model { get; set; }
        public int Year { get; set; }

        public string GetInfo()
        {
            return $"{Year} {Make} {Model}";
        }
    }

    class Program
    {
        static void Main()
        {
            // Create some person objects
            var alice = new Person { Name = "Alice", Age = 28 };
            var bob = new Person { Name = "Bob", Age = 35 };
            var carol = new Person { Name = "Carol", Age = 42 };

            // An array of person objects
            var people = new Person[] { alice, bob, carol };

            // Greet each person
            foreach (var person in people)
            {
                person.Greet();
            }

            // Create a book object
            var book = new Book
            {
                Title = "Sample Book",
                Author = "Mock Author",
                Year = 2023,
                Pages = 300,
                IsAvailable = true
            };

            // Print book details
            book.Print();

            // Create some car objects
            var car1 = new Car { Make = "Toyota", Model = "Corolla", Year = 2022 };
            var car2 = new Car { Make = "Honda", Model = "Civic", Year = 2021 };
            var car3 = new Car { Make = "Ford", Model = "Mustang", Year = 2023 };

            // Get car information
            Console.WriteLine(car1.GetInfo());
            Console.WriteLine(car2.GetInfo());
            Console.WriteLine(car3.GetInfo());

            // Execute some async methods (using async keyword and Task.Delay)
            SomeAsyncMethod();
            AnotherAsyncMethod();

            // Demonstrate exception handling
            try
            {
                throw new Exception("Something went wrong!");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception caught: " + ex.Message);
            }
        }

        // An async method using Task.Delay
        static async System.Threading.Tasks.Task SomeAsyncMethod()
        {
            await System.Threading.Tasks.Task.Delay(1000);
            Console.WriteLine("SomeAsyncMethod executed after 1 second.");
        }

        // Another async method using Task.Delay
        static async System.Threading.Tasks.Task AnotherAsyncMethod()
        {
            await System.Threading.Tasks.Task.Delay(2000);
            Console.WriteLine("AnotherAsyncMethod executed after 2 seconds.");
        }
    }
}
