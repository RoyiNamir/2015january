//
//  main.swift
//  LearningStructs
//
//  Created by Elad Lavi on 1/29/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation


struct Point{
    var x:Int = 0;
    var y:Int = 0;
}

var myPoint:Point = Point();
myPoint.x = 13;
myPoint.y = 19;

struct Rectangle{
    var x:Int = 0;
    var y:Int = 0;
    var width:Int = 0;
    var height:Int = 0;
    static var s = "a rectangle is a parallelogram with 90 degrees angle.";
    func description() -> String{
        return "x: \(x), y: \(y), width: \(width), height: \(height)"
    }
}
var rect = Rectangle();
rect.x = 10;
rect.y = 10;
rect.width = 100;
rect.height = 50;



var rect2:Rectangle = rect;
rect.x += 30;
println(rect.description());

//Structs are value types! this means members are copied and not passed by reference.
var counter:Int = 0;
class Person{
    //lazy var name:String;
    var name:String;
    var age:Int{
        willSet{
            println("age value is about to change to \(newValue)");
        }
        didSet{
            println("age value was just changed to \(self.age)");
        }
    };
    init(){
        self.name = "Elad";
        self.age = 0;
        self.lastName = "";
    }
    
    
    /*
    class var counter:Int{
    return 0;
    };
    */
    
    class func myStaticFunc() {
        println("in myStaticFunc()");
        counter++;
    }
    
    class func getCounter()->Int{
        return counter;
    }
    
    private var _lastName:String?;
    
    func description() -> String{
        return "my name is \(self.name) and I am \(self.age) years old";
    }
    
    var lastName:String{
        get{
            return _lastName!;
        }
        set{
            if(newValue.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)>3){
                _lastName = newValue;
            }
        }
    }
    
    
    
    
    
}
var p = Person();
//p.name = "Yuli";
p.age = 40;
p.lastName = "Stein";
p._lastName="Stein2";

//in contract to structs, classes are reference types.

var p2 = p;
//p2.name = "Roei";
//println(p.name);

/*
var x:Int = 8;
var y:Int = 8;
*/

//p2 = Person();
//p2.name = "Yuli";
//p2.age = 40;
var f = p !== p2;
//f = x == y;
println(f);


println(Rectangle.s);
Person.myStaticFunc();

class MyDictionary {
    private var keys:[String] = [];
    private var values:[String?] = [];
    
    func add(key:String, value:String){
        for i in 0..<keys.count{
            if(key==keys[i]){
                values[i] = value;
                return;
            }
        }
        keys.append(key);
        values.append(value);
    }
    
    subscript(index: String) -> String? {
        get{
            for i in 0..<keys.count{
                if(index==keys[i]){
                    return values[i];
                }
            }
            return nil;
        }
        set(newValue){
            for i in 0..<keys.count{
                if(index==keys[i]){
                    values[i] = newValue;
                    return;
                }
            }
            keys.append(index);
            values.append(newValue);
        }
    }
    
}


var dict:MyDictionary = MyDictionary();
dict["how are you?"] = "I am doing fine";
dict["what day it is?"] = "Today is Monday";
println(dict["how are you?"]!);

//Inheritance:
class Employee: Person{
    var employeeNumber  = 12345678;
    var hourlyRate = 500;
    
    //overriding a method of Person
    override func description() -> String {
        return "my name is \(self.name) and I am \(self.age) years old, my hourly rate is \(self.hourlyRate)";
    }

    override var lastName:String{
        get{
            return "\(_lastName) \(self.employeeNumber)";
        }
        set{
            if(newValue.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)>3){
                _lastName = newValue;
            }
        }
    }
    
}
var e1 = Employee();
println(e1.description());





