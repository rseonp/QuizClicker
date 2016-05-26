//
//  AskViewController.swift
//  QuizClicker
//
//  Created by Victor Li Wang on 5/25/16.
//  Copyright © 2016 Victor Li Wang. All rights reserved.
//

import UIKit

class AskViewController: UITableViewController {

    var quizzes: [Quiz] = quizData
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "Owner here"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return quizzes.count
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath)
        -> UITableViewCell {
            let cell = tableView.dequeueReusableCellWithIdentifier("QuizCell", forIndexPath: indexPath) as! QuizCell
            
            let quiz = quizzes[indexPath.row] as Quiz
            cell.quiz = quiz

            return cell
    }
    
    @IBAction func cancelToQuizzesViewController(segue:UIStoryboardSegue) {
    }
    
    @IBAction func saveQuizDetail(segue:UIStoryboardSegue) {
        if let quizDetailsViewController = segue.sourceViewController as? QuizDetailsViewController {
            
            //add the new player to the players array
            if let quiz = quizDetailsViewController.quiz {
                quizzes.append(quiz)
                
                //update the tableView
                let indexPath = NSIndexPath(forRow: quizzes.count-1, inSection: 0)
                tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
            }
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
