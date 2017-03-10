//
//  SecondViewController.swift
//  Reminders
//
//  Created by Kyrhee Powell on 3/4/17.
//  Copyright © 2017 Translated Ideas. All rights reserved.
//

import UIKit

class GoalViewController: UIViewController{
    //MARK: Properties
    @IBOutlet weak var goalName: UITextField!
    @IBOutlet weak var goalDeadline: UIDatePicker!
    //Send Goal to next view so we can add event to this goal
    var goalToSend: Goal?
    
    //MARK: Base Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Implemented Actions
    @IBAction func createGoal(_ sender: UIButton) {
        // Create Goal and prepare to send to next view
        let newGoal = Goal(goalName: goalName.text!, completionDate: goalDeadline.date)
        goalToSend = newGoal
        print(newGoal.goalName)
        
        }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        self.view.endEditing(true)
        return false
    }
    
}
