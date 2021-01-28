//
//  SecondViewController.swift
//  Time Calculator
//
//  Created by Student on 12/14/20.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var lastHourLabel: UILabel!
    @IBOutlet weak var lastMinuteLabel: UILabel!
    @IBOutlet weak var lastSecondLabel: UILabel!
    var hours = 0
    var minutes = 0
    var seconds = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minutes += seconds / 60 
        seconds = seconds % 60
        hours += minutes / 60
        minutes = minutes % 60
        lastHourLabel.text = String(hours)
        lastMinuteLabel.text = String(minutes)
        lastSecondLabel.text = String(seconds)
    }
}
