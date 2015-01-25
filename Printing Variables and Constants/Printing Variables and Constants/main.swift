//
//  main.swift
//  Printing Variables and Constants
//
//  Created by Elad Lavi on 1/22/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

var s = "Hello";

//println("Hello, World!");
//println(s);
//print("Hello");
//print(" ");
//println("World!");

//variables within println:

/*
let i:Int = -25;
let f:Float = 123.123;
let d:Double = 123456.123456;
let b:Bool = true;

println("i = \(i) f = \(f), d = \(d), b = \(b)");
//Numbers:
let i1:Int = 5;
var i2 = 5;

var i3:Int8 = 7;
var i4:Int16;
var i5:Int32;
var i6:Int64;
//var i7:UInt8 = 255;
//println(i7);
let f1:Float = 9.99999999;
//println(f1);
*/

let c1:Character = "A";
let c2:Character = "B";
let c3:Character = "C";
let c4:Character = "D";
let c5:Character = "E";
let s2 = "FGHIJ";

var alphabet = String();
alphabet = [c1] + [c2] + s2 + "KLMNOP";
var b = alphabet=="FGHIJKLMNOP";
//println(b)

var b1:Bool;
let b2 = false;

b1 = 5 <= 7;
println(b1)

//tuples
let rectangle1 = (0, 0, 200, 100);
var rectangle2 = (x:0, y:0, width:200, height: 100);
println("width: \(rectangle2.width)");
let (x1,x2,x3,x4) = rectangle1;
println(x3);
let (_,_,_,x5) = rectangle1;
println(x5);


//optionals

var s3:String?;

//s3="hi";
println(s3);


typealias Boolean = Bool;

var b3: Boolean = true;

typealias Note = String;
var myNote:Note = "hi... that's my note...";

println(UInt16.max);






