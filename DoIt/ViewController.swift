//
//  ViewController.swift
//  DoIt
//
//  Created by Josh Ernisse on 1/18/17.
//  Copyright © 2017 Bright Cave. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTasks()
        // Do this before the tableview delegates
        
        tableView.dataSource = self
        tableView.delegate = self
        // This is saying look at the above class ViewController to get this information
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
        // How Many Rows Are There Going To Be
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
            // This is saying if taks is true important then do an exclemation point plus whatever the task name is
        } else {
            cell.textLabel?.text = task.name
            // This is saying if task is false important then just show the tasks name only
        }
        
        return cell
        // What is going to go in each cell, for example Hello will repeat 10 times in this instance
    }
    
    func makeTasks () -> [Task] {
        let task1 = Task()
        task1.name = "Walk The Dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "Buy Cheese"
        task2.important = true
        
        let task3 = Task()
        task3.name = "Mow The Lawn"
        task3.important = false
        
        return [task1, task2, task3]
    }
    
    @IBAction func plusTapped(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }
    
}

