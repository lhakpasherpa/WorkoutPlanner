//
//  schedule.swift
//  WorkOutpplannerProject
//
//  Created by student on 10/18/18.
//  Copyright © 2018 Student. All rights reserved.
//

import Foundation

extension Notification.Name {
    static let scheduleTypeRetrieved = Notification.Name("schedule Type Retrieved")
    static let sceduleForSelectedProductTypeRetrieved = Notification.Name("scedules for Selected schedule Type Retrieved")
}

//class ScheduleAbsistence{
//    let backendless = Backendless.sharedInstance()
//    var scheduleTypeDataStore:IDataStore!
//    var exercisesDataStore:IDataStore!
//
//    static var scheduleAbsistence = ScheduleAbsistence()
//
//    var schedules:[scheduleType] = []
//    var allExercises:[exercises] = []
//
//    var selectedScheduleType:scheduleType?
//    var selectedExercises:[exercises]=[]
//
//    private init(){
//        scheduleTypeDataStore = backendless?.data.of(scheduleType.self)
//        exercisesDataStore = backendless?.data.of(exercises.self)
//    }
//
//    subscript(_ index:Int) -> scheduleType {
//        return schedules[index]
//    }
//
//    func numProductsTypes() -> Int {
//        return schedules.count
//    }
//
//    func numExercises() -> Int {
//        return allExercises.count
//    }
//
//    func numSelectedExercises() -> Int {
//        return selectedExercises.count
//    }
//}

struct Schedule {
    var day : String
    var exercises : [String]
    
    static  var sch : Schedule!
}

struct detailSchedule {

    static var detail:detailSchedule = detailSchedule()
    //var c = 2
    private init(){}

    var schedules: [Schedule] = [

        Schedule(day : "day1" , exercises: ["Deadlift","Back squat","Bench Press"]),
        Schedule(day : "day2" , exercises: ["Bench Press","Dumbbell romanian deadlift","Kettlebell swing"]),
        Schedule(day : "day3" , exercises: ["Back squat","Suspended pushup","Pullup"]),
        Schedule(day : "day4" , exercises: ["Medicine ball slam","Swiss Ball Rollout","Banded Good Morning"]),
        Schedule(day : "day5" , exercises: ["Hamstring curl","Suspended inverted row","Barbell overhead press"]),
        Schedule(day : "day6" , exercises: ["Barbell hip thrust","Back squat","Pullup"]),

        ]
   
    func numSchedule() -> Int {
        return schedules.count
    }

    func schedulenum(_ index : Int) -> Schedule {
        return schedules[index]
    }

    subscript (index:Int) -> Schedule {
        return schedules[index]
    }

    mutating func addNewSchedule (_ schedule:Schedule) {
        schedules.append(schedule)
    }

    
    

}
//@objcMembers
//class Day :NSObject {
//
//    var day1:String
//    var day2:String
//    var day3:String
//    var day4:String
//    var day5:String
//    var day6:String
//    var objectId:String?
//
//    init(day1:String, day2:String,day3:String,day4:String,day5:String,day6:String) {
//        self.day1 = day1
//        self.day2 = day2
//        self.day3 = day3
//        self.day4 = day4
//        self.day5 = day5
//        self.day6 = day6
//    }
//
//    convenience override init() {
//        self.init(day1: " ",day2:" ",day3: " ",day4:"",day5: "",day6:" " )
//    }
//}
//
//class Day1{
//    static var day4:Day1 = Day1()
//    let backendless = Backendless.sharedInstance()!
//    var dayDataStore:IDataStore!
//
//    var days = [Day(day1: "jhdmcngxb", day2: "jdhbnx", day3: "dhbnx", day4: "hdcbnx", day5: "bsmnx ", day6: "nsbcvz")]
//
//     init() {
//
//
//        dayDataStore = backendless.data.of(Day.self)
//    }
//
//
//     func saveDays(day1:String,day2:String,day3:String,day4:String,day5:String,day6:String ){
//
//       var dayToSave = Day(day1: day1, day2: day2, day3: day3, day4: day4, day5: day5, day6: day6)
//        print(dayToSave)
//        dayToSave = dayDataStore.save(dayToSave) as! Day
//        days.append(dayToSave)
//        }
//
//
//}

class DaySaved {
    
    let backendless = Backendless.sharedInstance()!
    let dayDataStore:IDataStore!
    static var daySaved:DaySaved = DaySaved()
    
    var days:[Day] = []
    
    private init() {
        dayDataStore = backendless.data.of(Day.self)
    }
    
    func saveDay( day1:String, day2:String, day3:String, day4:String, day5:String, day6:String) {
        Types.tryblock({()  ->  Void in
        var dayToSave = Day(day1: day1, day2: day2, day3: day3, day4: day4, day5: day5, day6: day6)
            dayToSave = self.dayDataStore.save(dayToSave) as! Day
  //      days.append(dayToSave)
        },
         catchblock:  {(exception)  ->  Void in
            print(exception.debugDescription)
            
        })
    }    
}
