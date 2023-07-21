// Mock JavaScript File

// Define a class representing a person
class Person {
  constructor(name, age) {
    this.name = name;
    this.age = age;
  }

  greet() {
    console.log(
      `Hello, my name is ${this.name} and I am ${this.age} years old.`
    );
  }
}

// Create some person objects
const alice = new Person("Alice", 28);
const bob = new Person("Bob", 35);
const carol = new Person("Carol", 42);

// An array of person objects
const people = [alice, bob, carol];

// A function that finds the oldest person
function findOldestPerson(people) {
  let oldestPerson = people[0];
  for (let i = 1; i < people.length; i++) {
    if (people[i].age > oldestPerson.age) {
      oldestPerson = people[i];
    }
  }
  return oldestPerson;
}

// An object representing a book
const book = {
  title: "Sample Book",
  author: "Mock Author",
  year: 2023,
  pages: 300,
  isAvailable: true,
};

// A callback function for setTimeout
function callbackFunction() {
  console.log("Callback function executed!");
}

// Some asynchronous functions using setTimeout
setTimeout(callbackFunction, 1000);
setTimeout(() => {
  console.log("Another timeout function executed after 2 seconds.");
}, 2000);

// A Promise example
const promiseExample = new Promise((resolve, reject) => {
  setTimeout(() => {
    resolve("Promise resolved after 3 seconds!");
  }, 3000);
});

promiseExample.then((result) => {
  console.log(result);
});

// An example of using async/await with a Promise
async function asyncFunction() {
  try {
    const result = await promiseExample;
    console.log("Async/await:", result);
  } catch (error) {
    console.error("Error occurred:", error);
  }
}

asyncFunction();

// A sample event listener
const button = document.getElementById("myButton");
button.addEventListener("click", () => {
  console.log("Button clicked!");
});

// A simple recursive function
function factorial(n) {
  if (n === 0 || n === 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

// Example usage of the recursive function
console.log("Factorial of 5:", factorial(5));

// A generator function to generate Fibonacci sequence
function* fibonacciGenerator() {
  let a = 0;
  let b = 1;
  while (true) {
    yield a;
    [a, b] = [b, a + b];
  }
}

const fibonacciSequence = fibonacciGenerator();
console.log("Fibonacci sequence:");
for (let i = 0; i < 10; i++) {
  console.log(fibonacciSequence.next().value);
}

// An example of using a closure
function outerFunction() {
  let counter = 0;
  function innerFunction() {
    counter++;
    console.log("Counter:", counter);
  }
  return innerFunction;
}

const closureExample = outerFunction();
closureExample();
closureExample();
closureExample();

// A class representing a car
class Car {
  constructor(make, model, year) {
    this.make = make;
    this.model = model;
    this.year = year;
  }

  getInfo() {
    return `${this.year} ${this.make} ${this.model}`;
  }
}

// Create some car objects
const car1 = new Car("Toyota", "Corolla", 2022);
const car2 = new Car("Honda", "Civic", 2021);
const car3 = new Car("Ford", "Mustang", 2023);

console.log(car1.getInfo());
console.log(car2.getInfo());
console.log(car3.getInfo());

// ... (Add more code if needed)

// End of mock JavaScript file
