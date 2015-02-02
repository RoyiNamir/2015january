//
//  main.swift
//  LearningLoops
//
//  Created by Elad Lavi on 1/29/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

for (var i=1;i<=10;i++) {
    println("i = \(i)");
}


let names = ["Roei", "Moshe", "Yuli"];
for name in names{
    println(name);
}

for i in 1...3{
    println(i)
}
var i=0;
while i<=10{
    i++;
    if(i==4){
        continue;
    }
    println("i = \(i)");
    if(i==8){
        break;
    }
    
}


do{
    println("hi");
    i++;
}while i<=20;


if(1<2){
    println("one is less than two");
}else{
    println("compiler doesn't know basic math");
}
var choice = 3;
switch choice{
case 0:
    println("choice is zero");
    
case 1...3:
    
    fallthrough;
case 7...9:
    println("choice is one to three");
default:
    println("choice is neither zero nor one to three");
}

for x in 1...3{
    for y in 1...3{
        println("\(x) \(y)");
    }
}






