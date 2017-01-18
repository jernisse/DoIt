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
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.dataSource = self
        tableView.delegate = self
        // This is saying look at the above class ViewController to get this information
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        // How Many Rows Are There Going To Be
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Hello"
        return cell
        // What is going to go in each cell, for example Hello will repeat 10 times in this instance
    }
}

