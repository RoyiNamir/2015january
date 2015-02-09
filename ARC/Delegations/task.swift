//
//  task.swift
//  Delegations
//
//  Created by Elad Lavi on 2/9/15.
//  Copyright (c) 2015 Elad Lavi. All rights reserved.
//

import Foundation

protocol TaskDelegate{
    func taskStatusHasChanged(task:Task, done:Bool);
    func removeTask(task:Task);
}


class Task{
    var name = "";
    private var _done = false;
    var done:Bool{
        get{
            return _done;
        }
        set{
            _done = newValue;
            self.delgate?.taskStatusHasChanged(self, done: _done);
        }
    }
    var delgate:TaskDelegate?;
    deinit{
        delgate?.removeTask(self);
        println("\(self.name) is being deinitialized.");
    }
    
}

