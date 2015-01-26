//
//  main.swift
//  LearningArrays
//
//  Created by Elad Lavi on 1/26/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

var a1:Array<String> = Array<String>();
var a2:[String] = [String]();
var a3 = ["A", "B", "C"];
a3.append("D");
a3.insert("E", atIndex: 1);
a3.removeAtIndex(1);
a3.removeLast()
//println(a3);
a3.removeAll(keepCapacity: true);
var a4 = [5,7,34,87];
a4[0] = 18;
println(a4);
for i in a4{
    println(i);
}