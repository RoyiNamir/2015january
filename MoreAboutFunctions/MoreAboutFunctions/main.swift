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









