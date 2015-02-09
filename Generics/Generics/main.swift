//
//  main.swift
//  Generics
//
//  Created by Elad Lavi on 2/9/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

class Person{
    var name: String = "Name";
    var age:Int = 0;
    
    func profile()->String{
        return "I'm \(self.name) and I'm \(self.age) years old.";
    }
}

class Employee: Person{
    var employeeNumber = 1234567890;
    var hourlyRate = 12.00;
    
    override func profile() -> String {
        return "I'm \(self.name) and I'm \(self.age) years old and my hourly rate is $\(self.hourlyRate)";
    }
}

var p1 = Person();

p1.name = "Matt";
p1.age = 40;

var e1 = Employee();
e1.name = "Jim";
e1.age = 18;
e1.employeeNumber = 1;
e1.hourlyRate = 15.55;

func printPerson<T>(p:T){
    if p is Person{
        let o = p as Person;
        println(o.profile());
    }else{
        println("what the heck is p? I don't know this type");
    }
}



printPerson(p1);
printPerson(e1);


var s = "ABC";
printPerson(s);







