//
//  sceduleType.swift
//  WorkOutpplannerProject
//
//  Created by student on 11/5/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation

@objcMembers
class scheduleType: NSObject {
    var day : String
    var exercises : [exercises]
    
    var objectId:String?
    
    init (day:String, exercises:[exercises]) {
        self.day = day
        self.exercises = exercises
    }
    
    convenience override init(){
        self.init(day:"",exercises:[])
    }
}
