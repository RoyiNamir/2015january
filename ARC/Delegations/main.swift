//
//  main.swift
//  Delegations
//
//  Created by Elad Lavi on 2/9/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation



class Project:TaskDelegate {
    var name = "";
    var listOfTasks = [Task]();
    func taskStatusHasChanged(task: Task, done: Bool) {
        let status = (task.done ? "DONE" : "IN PROGRESS");
        println("Task \(task.name) is now \(status)");
    }
}



var p = Project();
p.name = "Cook Dinner";

let taskNames = ["Choose Menu", "Buy Groceries", "Prepare Ingredients", "Cook Food"];
for name in taskNames{
    var t = Task();
    t.name = name;
    t.delgate = p;
    p.listOfTasks.append(t);
    
}

p.listOfTasks[0].done = true;





