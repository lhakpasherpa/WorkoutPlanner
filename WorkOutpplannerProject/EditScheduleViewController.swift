//
//  EditScheduleViewController.swift
//  WorkOutpplannerProject
//
//  Created by student on 10/17/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class EditScheduleViewController: UIViewController {
    
    //var day2 = Day1.day4
    
    @IBOutlet weak var Day1TXT: UITextField!
    
    @IBOutlet weak var Day2TXT: UITextField!
    
    @IBOutlet weak var Day3TXT: UITextField!
    
    @IBOutlet weak var Day4TXT: UITextField!
    
    @IBOutlet weak var Day5TXT: UITextField!
    
    @IBOutlet weak var Day6TXT: UITextField!
     // our connection to the Day data table in the Be app
   
    let dayBureau = DaySaved.daySaved
    
    @IBAction func save(_ sender: Any) {
        
        dayBureau.saveDay( day1: Day1TXT.text!, day2: Day2TXT.text!, day3: Day3TXT.text!, day4: Day4TXT.text!, day5: Day5TXT.text!, day6: Day6TXT.text!)
        
        
        self.dismiss(animated: true, completion: nil)
        
//        let startingDate = Date()
//
//        let day = days[0]
//
//        dayDataStore.save(day,
//                           response: {(savedDay) -> Void in            // saved the city, so now save the tourist site
//                            print(savedDay as! Day)
//        },
//                           error: {(exception) -> Void in
//                            print(exception ?? "Eh, what's up, doc?")
//        })
//
//
//
//        print("Done!! in \(Date().timeIntervalSince(startingDate)) seconds")
//
       
        
        
//        if Day1TXT.text!.isEmpty == false{
//            //var ex:[String] = ["a123","b132","C344"]
//            //ex.insert(Day1TXT.text!, at: detailSchedule.detail.c)
//
//            //ex.append(Day1TXT.text!)
//            let s = Schedule.init(day: "day1", exercises: ["Deadlift","Back squat","Bench Press", Day1TXT.text!])
//
//            detailSchedule.detail.schedules[0] = s
//
//        }
//        if Day2TXT.text!.isEmpty == false{
//            let s = Schedule.init(day: "day2", exercises: ["Bench Press","Dumbbell romanian deadlift","Kettlebell swing", Day2TXT.text!])
//            detailSchedule.detail.schedules[1] = s
//        }
//        if Day3TXT.text!.isEmpty == false{
//            let s = Schedule.init(day: "day3", exercises: ["Back squat","Suspended pushup","Pullup", Day3TXT.text!])
//            detailSchedule.detail.schedules[2] = s
//        }
//        if Day4TXT.text!.isEmpty == false{
//            let s = Schedule.init(day: "day4", exercises: ["Medicine ball slam","Swiss Ball Rollout","Banded Good Morning", Day4TXT.text!])
//            detailSchedule.detail.schedules[3] = s
//
//        }
//        if Day5TXT.text!.isEmpty == false{
//            let s = Schedule.init(day: "day5", exercises: ["Hamstring curl","Suspended inverted row","Barbell overhead press", Day5TXT.text!])
//            detailSchedule.detail.schedules[4] = s
//        }
//        if Day6TXT.text!.isEmpty == false{
//            let s = Schedule.init(day: "day6", exercises: ["Barbell hip thrust","Back squat","Pullup", Day6TXT.text!])
//            detailSchedule.detail.schedules[5] = s
//        }
//
        
        
    }
    
    //    override func viewWillAppear(_ animated: Bool) {
    //
    //          detailSchedule.detail.c = detailSchedule.detail.c + 1
    //
    //    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
