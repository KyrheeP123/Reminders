//
//  ThirdViewController.swift
//  Reminders
//
//  Created by Kyrhee Powell on 3/7/17.
//  Copyright © 2017 Translated Ideas. All rights reserved.
//

import UIKit

// Delegate
//protocol EventViewControllerDelegate {
//    func goalLoaded(controller: EventViewController, G: Goal)
//}

class EventViewController: UIViewController, UITextFieldDelegate{
    //Delegating object
    //var delegate:EventViewControllerDelegate? = nil
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var eventLocation: UITextField!
    @IBOutlet weak var eventDeadline: UIDatePicker!
    var goalToRecieve: Goal?
    var eventToSend: Event?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(goalToRecieve!.goalName)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        self.view.endEditing(true)
        return false
    }
    
    
    @IBAction func createEvent(_ sender: Any) {
        //Protection for unwrapping an optional object
//        guard let delegate = self.delegate else {
//            print("Delegate Nil")
//            return
//        }
//        delegate.goalLoaded(controller: self, G: goalToRecieve!)
        
        //Create an event
        let event = Event(eventName: eventName.text!, time: eventDeadline.date, location: eventLocation.text!)
        eventToSend = event
        
        //Add event to its goal
        event.addEvent()
        
//        let ExchangeViewData2 = GoalTableViewController()
//        ExchangeViewData2.eventToRecieve = eventToSend
//        ExchangeViewData2.delegate = self
    }
    
//    func eventSent(controller: GoalTableViewController, E: Event) {
//        eventToSend = E
//    }
    
}
