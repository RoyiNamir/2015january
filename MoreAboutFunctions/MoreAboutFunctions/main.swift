//
//  main.swift
//  MoreAboutFunctions
//
//  Created by Elad Lavi on 2/9/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

//multiple outputs
func getBounds(numbers:[Int])->(min:Int, max:Int){
    var min = numbers[0];
    var max = numbers[0];
    for i in 1..<numbers.count{
        let x = numbers[i];
        if x>max{
            max = x;
        }
        else if x<min{
            min = x;
        }
    }
    
    return (min, max);
}


//external parameters names
func multiply(theNumber x:Int, with y:Int)->Int{
    return x*y;
}
func subtract(#thatMuch:Int, #from:Int)->Int{
    return from-thatMuch;
}
let difference = subtract(thatMuch:8, from:5);


let product = multiply(theNumber: 5, with: 3);


//default values
func power(base:Int, exponent:Int = 2) -> Int{
    return 900;
}

let p = power(2, exponent: 3);
let m = power(5);

//Variadic parameters:

func sum(numbers:Int...)->Int{
    var sum = 0;
    for x in numbers{
        sum += x;
    }
    return sum;
}

//var myNumbers = [34, 10];

//println(sum(34, 10));

struct A{
    var a:Int = 1;
}
var myA = A();
//myA.a = 2;
var x = 3;
func aMethod(inout stamA:A, inout num:Int){
    stamA.a = 2;
    num = 4;
}

aMethod(&myA, &x);

println(myA.a);
println(x);

func swap(inout x:Int, inout y:Int){
    let temp = x;
    x = y;
    y = temp;
}

var num1 = 5;
var num2 = 7;
swap(&num1, &num2);
println("num1=\(num1) and num2=\(num2)");

class Dog{
    var name:String?;
}

var d = Dog();
//d.name = "snoopie";
/*
if d.name==nil{
    println("name is nil");
}else{
    println("name is NOT nil");
}
*/

if let n = d.name{
    println("name is NOT nil, the name is: \(n)");
}else{
    println("name is nil");
}


