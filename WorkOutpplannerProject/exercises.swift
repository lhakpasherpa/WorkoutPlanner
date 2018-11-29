//
//  exercises.swift
//  WorkOutpplannerProject
//
//  Created by student on 11/5/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation

class exercises: NSObject {
    
    var exerName:String?
    var exerciseDescription: String?
    
    var objectID:String?
    
    init(exerName:String, exerciseDescription:String){
        self.exerName = exerName
        self.exerciseDescription = exerciseDescription
    }
    
    convenience override init() {
        self.init(exerName:"", exerciseDescription:"")
    }
}

