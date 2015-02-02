//
//  main.swift
//  LearningFunctions
//
//  Created by Elad Lavi on 1/29/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation



func myFunc() -> String{
    return "hello";
}


println(myFunc());

func myVoidFunc(){
    println("hi");
}
myVoidFunc();

func averageScore(scores:[Float]) -> Float{
    var total:Float = 0;
    
    for score in scores{
        total += score;
    }
    
    return total / Float(scores.count);
}

let avg = averageScore([20,30,55,30,100,80]);
println("average: \(avg)");

func product(x:Int, y:Int) ->Int{
    var small = x;
    var large = y;
    if(x>y){
        small = y;
        large = x;
    }
    var product = 0;
    for i in 0..<small {
        product += large;
    }
    return product;
}




println("five times three is \(product(5,3))");

func distance(x:Int, y:Int) -> Int{
    var small = x;
    var large = y;
    if(x>y){
        small = y;
        large = x;
    }
    var distance = 0;
    while(small + distance < large){
        distance++;
    }
    return distance;
}


func myFunc2(x:Int, y:Int) -> Int{
    func sum(a:Int, b:Int) -> Int{
        return a+b;
    }
    
    var temp1 = sum(x, 1);
    var temp2 = sum(y, 1);
    
    return sum(temp1, temp2);
    
}



var myArray = ["b", "a", "c"];
let mySortedArray = sorted(myArray, {(s1:String, s2:String) -> Bool in
    return s1<s2 });
println(mySortedArray);

var points = [(x:19,y:5),(x:7,y:5)];
for point in points{
    println("(\(point.x),\(point.y))");
}


let mySortedPoints = sorted(points, {(point1, point2) -> Bool in
    let d1 = sqrt(Double(point1.x * point1.x + point1.y * point1.y));
    let d2 = sqrt(Double(point2.x * point2.x + point2.y * point2.y));
    return d1 < d2;
});


println(mySortedPoints);


