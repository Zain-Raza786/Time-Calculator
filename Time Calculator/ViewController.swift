//
//  ViewController.swift
//  Time Calculator
//
//  Created by Student on 11/22/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var minuteLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var insertHour: UITextField!
    @IBOutlet weak var insertMinute: UITextField!
    @IBOutlet weak var insertSecond: UITextField!
    @IBOutlet weak var timeCounterLabel: UILabel!
    var hours = 0
    var minutes = 0
    var seconds = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func calculateButtonTapped(_ sender: Any) {
        if insertHour.text!.count != 0 && insertMinute.text!.count != 0 && insertSecond.text!.count != 0 {
            hours = Int(hourLabel.text!)! + Int(insertHour.text!)!
            minutes = Int(minuteLabel.text!)! + Int(insertMinute.text!)!
            seconds = Int(secondLabel.text!)! + Int(insertSecond.text!)!
            hourLabel.text = String(hours)
            minuteLabel.text = String(minutes)
            secondLabel.text = String(seconds)
            insertHour.text = ""
            insertMinute.text = ""
            insertSecond.text = ""
            let times = Int(timeCounterLabel.text!)! + 1
            timeCounterLabel.text = String(times)
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! SecondViewController
        dvc.hours = hours
        dvc.minutes = minutes
        dvc.seconds = seconds
    }
}

