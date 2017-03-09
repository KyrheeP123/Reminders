//
//  SecondViewController.swift
//  Reminders
//
//  Created by Kyrhee Powell on 3/4/17.
//  Copyright © 2017 Translated Ideas. All rights reserved.
//

import UIKit

class GoalViewController: UIViewController, UITextFieldDelegate{
    //MARK: Properties
    @IBOutlet weak var goalName: UITextField!
    @IBOutlet weak var goalDeadline: UIDatePicker!
    //Send Goal to next view so we can add event to this goal
    var goalToSend: Goal?
    
    //MARK: Base Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        self.goalName.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Delegate Protocol
    //Delegate Protocol defined from EventViewController
//    func goalLoaded(controller: EventViewController, G: Goal) {
//        goalToSend = G
//        //controller.navigationController?.popViewController(animated: true)
//    }
    
    //MARK: Implemented Actions
    @IBAction func createGoal(_ sender: UIButton) {
        // Create Goal and prepare to send to next view
        let newGoal = Goal(goalName: goalName.text!, completionDate: goalDeadline.date)
        goalToSend = newGoal
        print(newGoal.goalName)
        
        }
    
    //Before segue happens send the goal to the EventViewController
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        print("Here")
//        //Segue from goal to event controller
//        if segue.identifier == "Event"{
//            let ExchangeViewData = segue.destination as! EventViewController
//            ExchangeViewData.goalToRecieve = goalToSend!
//            ExchangeViewData.delegate = self
//            
//        }
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        self.view.endEditing(true)
        return false
    }
    
       
    
}
