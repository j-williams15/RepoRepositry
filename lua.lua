-- Define a table representing a person
local Person = {
    name = "",
    age = 0,
}

function Person:new(name, age)
    local obj = {}
    setmetatable(obj, self)
    self.__index = self
    obj.name = name
    obj.age = age
    return obj
end

function Person:greet()
    print("Hello, my name is " .. self.name .. " and I am " .. self.age .. " years old.")
end

-- Create some person objects
local alice = Person:new("Alice", 28)
local bob = Person:new("Bob", 35)
local carol = Person:new("Carol", 42)

-- An array of person objects
local people = { alice, bob, carol }

-- Greet each person
for _, person in ipairs(people) do
    person:greet()
end

-- Define a table representing a book
local Book = {
    title = "",
    author = "",
    year = 0,
    pages = 0,
    isAvailable = false,
}

function Book:new(title, author, year, pages, isAvailable)
    local obj = {}
    setmetatable(obj, self)
    self.__index = self
    obj.title = title
    obj.author = author
    obj.year = year
    obj.pages = pages
    obj.isAvailable = isAvailable
    return obj
end

function Book:printInfo()
    print("Book: " .. self.title .. " by " .. self.author .. ", Published in " .. self.year .. ", Pages: " .. self.pages)
end

-- Create a book object
local book = Book:new("Sample Book", "Mock Author", 2023, 300, true)

-- Print book details
book:printInfo()

-- Define a table representing a car
local Car = {
    make = "",
    model = "",
    year = 0,
}

function Car:new(make, model, year)
    local obj = {}
    setmetatable(obj, self)
    self.__index = self
    obj.make = make
    obj.model = model
    obj.year = year
    return obj
end

function Car:getInfo()
    return self.year .. " " .. self.make .. " " .. self.model
end

-- Create some car objects
local car1 = Car:new("Toyota", "Corolla", 2022)
local car2 = Car:new("Honda", "Civic", 2021)
local car3 = Car:new("Ford", "Mustang", 2023)

-- Get car information
print(car1:getInfo())
print(car2:getInfo())
print(car3:getInfo())

-- Execute some functions
local function factorial(n)
    if n == 0 or n == 1 then
        return 1
    else
        return n * factorial(n - 1)
    end
end

-- Example usage of the factorial function
print("Factorial of 5: " .. factorial(5))

-- Demonstrate exception handling
local status, error = pcall(function()
    error("Something went wrong!")
end)

if not status then
    print("Exception caught: " .. error)
end
