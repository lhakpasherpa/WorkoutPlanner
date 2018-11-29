//
//  Day.swift
//  WorkOutpplannerProject
//
//  Created by Student on 11/28/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation

@objcMembers
class Day :NSObject {

    var day1:String?
    var day2:String?
    var day3:String?
    var day4:String?
    var day5:String?
    var day6:String?
    
    var objectId:String?

    init(day1:String, day2:String,day3:String,day4:String,day5:String,day6:String) {
        self.day1 = day1
        self.day2 = day2
        self.day3 = day3
        self.day4 = day4
        self.day5 = day5
        self.day6 = day6
    }

    convenience override init() {
        self.init(day1: " ",day2:" ",day3: " ",day4:"",day5: "",day6:" " )
    }
}
