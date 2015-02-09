//
//  main.swift
//  Swift Recap
//
//  Created by Elad Lavi on 2/5/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

println("Hello, World!")

//1. Playground, Hello World, println
//2. Constants and Variables.
//3. Comments.
//4. Numbers.
//5. Strings.
//6. Booleans.
//7. Tuples.
//8. Optionals.
//9. Type aliases
//10. Global variables vs. Local Variables.
//11. Assignment (Value Types vs. Reference Types)
//12. Math operators
//13. Compersion operators
//14. Range operators (..<)
//15. Logical operatos (&& || !)
//16. Enums
//17. Arrays and Dictionaries
//18. Loops and if statement.
//19. Functions (and nested functions)
//20. Closures (sending a block of code as a parameter). Also called: anonymous functions.
//21. Structures
//22. Classes
//23. instance equality operator (=== and !==)
//24. Properties (get and set).
//    two kinds of properties: stored and calculated.
//    we also learned about Lazy.
//25. Property Obeservers (willSet and didSet) (not important)
//26. Class types properties (static properties)
//27. Class Methods.
//28. Subscripts  ([])  (not important)
//29. Inheritance    (:)
//30. Overriding methods and properties
//31. Initializing an object.

//Closures:

var alpha = ["D", "E", "A", "C", "B"];

let alpha_sorted = sorted(alpha, {(s1: String, s2: String) -> Bool
    in return s1<s2
});

for i in 0..<alpha_sorted.count-1 {
    print("\(alpha_sorted[i]),");
}
println(alpha_sorted[alpha_sorted.count-1]);

//Structs:
struct Rectangle{
    var x:Int = 0;
    var y:Int = 0;
    var width:Int = 0;
    var height:Int = 0;
    func description() -> String{
        return "x: \(rect.x), y: \(rect.y), width: \(rect.width), height: \(rect.height).";
    }
}
var rect = Rectangle();
rect.x = 10;
rect.y = 10;
rect.width = 100;
rect.height = 50;
println(rect.description());
//structures are value types!


//classes:

var _counter = 0;
class Person{
    var name: String;
    var age:Int;
    private var _lastName: String = ""; //private means: visible only within this file!
    
    
    init(name: String, age: Int){
        self.name = name;
        self.age = age;
    }
    
    convenience init(){
        self.init(name: "John", age: 0);
        
        //self.name = "John";
        //self.age = 0;
        
    }

    

    
    class var counter:Int{
        return _counter;
    };
    
    
    var lastName:String{
        get{
            return _lastName;
        }
        set{
            _lastName = newValue;
        }
    }
    
    func description() ->String{
        return "I'm \(self.name) and I'm \(self.age) years old.";
    }
    
    func doPersonThings(){
        println("\(self.name) is doing person things...");
    }
    
    deinit{
        println("in person deinit");
    }
    
    
    class Health {
        var pulse:Int = 100;
        var bmi:Int = 20;
        
        func isHealthy() ->Bool{
            return (pulse>80 && bmi<30);
        }
    }
}

var matt = Person();
matt.name = "Matt";
matt.age = 40;
var matt2 = matt; //copy reference!! (reference is a pointer to address in RAM)
matt2.age = 50;
var matt3 = Person();
matt3.name = "Matt";
matt3.age = 50;
println(matt.description());
matt.lastName = "Smith";
println("person counter: \(Person.counter)");

//let's show the difference between class and struct:
struct PersonStruct{
    var name: String = "John";
    var age:Int = 0;
    
    func description() ->String{
        return "I'm \(self.name) and I'm \(self.age) years old.";
    }
}

var mattStruct = PersonStruct();
mattStruct.name = "Matt";
mattStruct.age = 40;
var matt2Struct = mattStruct; //copy value!!!!!
matt2Struct.age = 50;
println(mattStruct.description());

//class equality
println(matt2 === matt);
println(matt3 === matt);// same values of properties but yet it's not the same instance!
println(matt3 !== matt);


//inheritance
class Employee: Person{
    var employeeNumber:Int = 1234567890;
    var hourlyRate:Float = 100.00;
    
    
    init(name:String, age:Int, employeeNumber:Int, hourlyRate:Float){
        super.init(name: name, age: age);
        self.employeeNumber = employeeNumber;
        self.hourlyRate = hourlyRate;
    }

    init(){
        super.init(name: "John",age: 0);
    }

    override func description() -> String {
        
        
        return "\(super.description()) My employee # is \(self.employeeNumber) and my hourly rate is: \(self.hourlyRate).";
    }
    
    func doEmployeeThings(){
        println("\(self.name) is doing employee things...");
    }
}
var emp1:Employee = Employee();
emp1.name = "Jim";
emp1.age = 18;
emp1.employeeNumber = 1;
emp1.hourlyRate = 80.0;
println(emp1.description());

var person2:Person? = Person();
println(person2!.description());
person2 = nil;

//casting:
let d1 = 9.1234567;
let i1 = Int(d1);
let f1 = Float(d1);
println(d1);
println(f1);
let b1 = Bool(d1);
println(b1);
let s1 = toString(d1);


var e1 = Employee();
e1.name = "Jim";
e1.doPersonThings();
e1.doEmployeeThings();


let a1:[Person] = [e1];

for item in a1{
    item.doPersonThings();
}

class Animal{
    
}

class Girl : Person{
    
}
var g = Girl();
let e2 = g as Person; //upcasting
//let e3 = e2 as Employee; //downcasting can cause runtime error.
//e3.doEmployeeThings();

//extensions (like inheritance, but for specific scope)

extension Person{
    func bark(){
        println("waf waf");
    }
}

e2.bark();

//protocol  (like interface in Java)
protocol Printable{
    func print();
    func printB();
}


protocol Clickable{
    func onClick();
}

class Button{
    var listener: Clickable?;
    
}
class MyClick:Clickable{
    func onClick() {
        println("clicked...");
    }
}

var myButton:Button = Button();
var myClick:MyClick = MyClick();
myButton.listener = myClick;



class aClass:Person, Printable {
    func print() {
        println("printing");
    }
    func printB() {
        
    }
}






