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
var a3 = ["A", "B", "C", 3];
//var c:Character = "D";
//a1.append(c); this will not work because it isn't a String.
a3.append("D");
a3.insert("E", atIndex: 1);
a3.append(2);

a3.removeAtIndex(1);
a3.removeLast();
//println(a3);
a3.removeAll(keepCapacity: true);
a3.removeAll();

var a4 = [5,7,34,87];
a4[0] = 18;
println(a4);
for i in a4{
    print("\(i),");
}
println();
for i in 0..<a4.count{
    print("\(a4[i]),");
}
println();


//dictionary:
var d1:Dictionary<String, Int> = ["tom":123456, "roei":3463562];
let person = d1["tom"];
if(person != nil){
        println(person!);
}else{
    println("no such member in d1");
}

d1["roei"] = 234234234;
//d1.removeValueForKey("roei");
//d1["roei"] = nil;
for i in d1{
    println(i);
}

for (key,value) in d1{
    println("key: \(key), value: \(value)");
}

for key in d1.keys{
    println(key);
}







