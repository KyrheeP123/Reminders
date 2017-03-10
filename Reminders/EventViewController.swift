//
//  ThirdViewController.swift
//  Reminders
//
//  Created by Kyrhee Powell on 3/7/17.
//  Copyright © 2017 Translated Ideas. All rights reserved.
//

import UIKit
//Unified logging system
//Allows us to send messages to the consoles
import os.log

class EventViewController: UIViewController, UITextFieldDelegate{
    //Delegating object
    //var delegate:EventViewControllerDelegate? = nil
    @IBOutlet weak var eventName: UITextField!
    @IBOutlet weak var eventLocation: UITextField!
    @IBOutlet weak var eventDeadline: UIDatePicker!
    
    var currEvent: Event? 
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        ///=== is a identity operator, it checks that the button and saveButton are of the same type
        guard let button = sender as? UIBarButtonItem, button === saveButton else{
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        //Will return the value of the optional or the empyt string
        let name = eventName.text ?? ""
        let location = eventLocation.text ?? ""
        let deadline = eventDeadline.date
        
        //Event to be sent back to the table
        currEvent = Event(eventName: name, time: deadline, location: location)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        self.view.endEditing(true)
        return false
    }
    
    
}
