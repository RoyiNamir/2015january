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
    var name: String = "John";
    var age:Int = 0;
    private var _lastName: String = ""; //private means: visible only within this file!
    
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

