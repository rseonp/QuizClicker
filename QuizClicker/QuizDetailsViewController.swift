//
//  QuizDetailsViewController.swift
//  QuizClicker
//
//  Created by Victor Li Wang on 5/26/16.
//  Copyright © 2016 Victor Li Wang. All rights reserved.
//

import UIKit

class QuizDetailsViewController: UITableViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var detailLabel: UILabel!
    
    var quiz: Quiz?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveQuizDetail" {

            let date = NSDate()
            let calendar = NSCalendar.currentCalendar()
            let components = calendar.components([.Day , .Month , .Year], fromDate: date)
            
            let year =  components.year
            let month = components.month
            let day = components.day
            
            print(year)
            print(month)
            print(day)
            quiz = Quiz(name: nameTextField.text!, date: "\(month)/\(day)/\(year)", numQuestions: 1)
        }
    }
   
}
