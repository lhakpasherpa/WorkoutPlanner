//
//  CardioTableViewController.swift
//  WorkOutpplannerProject
//
//  Created by Student on 10/6/18.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit
var cardio = ["Elliptical", "Running", "Stair Climber", "Jumping Rope", "Kettlebells", "Cycling", "Swimming", "Rowing"]
var cardioDisc = ["These machines were originally designed to minimize impact on the knees and hips, but still allow a great workout. “Because the impact is quite low, the calorie-burning effect isn’t as great as other cardio machines, like treadmills and stairmasters. the elliptical machine can be an excellent way to burn calories without wearing out your joints.", "Running at a steady, moderate pace is a sure way to burn fat and calories, but it’s not the most economical way to build or even maintain muscle.", "A stair climber offers another popular way to burn fat and calories, but only about 500-600 calories for an 180-lb. man at a moderate pace. Because of the higher leg lift involved, climbing stairs uses significantly more muscles than just walking—strengthening your legs in a functional way,", "There’s a reason the jump rope is a mainstay in a boxer’s training regimen: it’s cheap, easy to do, increases foot speed, and burns a ton of calories. Think of your favorite boxers, wrestlers, and fighters—they all jump rope. “Jumping rope not only enhances your footwork, shoulder strength, and coordination, but also simulates sprinting, allowing you to burn as much as 500 calories in just 30 minutes.", "Kettlebell workouts combine the best of both worlds: strength training and cardio.", "Doing intervals on a stationary bike is a great way to maximize your calorie burn in minimum time. “Keep the intensity really high on the intervals for a couple of minutes, then slow down for a minute or so, continually repeating these intervals for as long as you can", "Swimming is a total-body workout that starts the second you begin treading water. “You’re essentially fighting gravity, so your muscles are working extra hard to keep you afloat without getting a break until you’re out of the water,” says Boudro. “In fact, with just one minute of fast swimming, you’ll burn 14 calories.", "Take a look at any collegiate rower’s body and you’ll surely be envious of their athletic, v-cut frame. “Rowing makes the list because it is a great way to incorporate the upper and lower body in a relatively low-stress manner on your joints and ligaments."]

var myIndex = 0
class CardioTableViewController: UITableViewController {
   
//    class TableViewController: UITableViewController {
    
        
        // MARK: - Table view data source
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return cardio.count
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath)
            -> UITableViewCell {
                let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
                cell?.textLabel?.text = cardio[indexPath.row]
                return cell!
        }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "Cardio"
        tableView.reloadData()
    }
    
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            myIndex = indexPath.row
            performSegue(withIdentifier: "segue", sender: self)
        }
        
    }


