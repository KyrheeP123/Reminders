//
//  File.swift
//  Reminders
//
//  Created by Kyrhee Powell on 3/4/17.
//  Copyright © 2017 Translated Ideas. All rights reserved.
//

import Foundation


var eventDict = [Int: Event]()
var taskDict = [Int: Task]()

class Goal{
    var goalName: String
    var completionDate: Date
    
    var car = [Int: Any]()
    
    public init(goalName: String, completionDate: Date) {
        self.goalName = goalName
        self.completionDate = completionDate
    }
    
}


class Event{
    var eventName: String
    var time: Date
    var location: String = ""
    
    init(eventName: String, time: Date, location: String) {
        self.eventName = eventName
        self.time = time
        self.location = location
        
    }
    
    func addEvent(){
        eventDict.updateValue(self, forKey: eventDict.count)
        
    }
}

class Task {
    var taskName: String?
    var deadline: Date?
    
    init(taskName: String, deadline: Date){
        self.taskName = taskName
        self.deadline = deadline
    }
    
    func addTask(){
        taskDict.updateValue(self, forKey: taskDict.count)
    }
}

