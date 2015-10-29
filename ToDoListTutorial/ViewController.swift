//
//  ViewController.swift
//  ToDoListTutorial
//
//  Created by Scotty Shaw on 10/27/15.
//  Copyright © 2015 ___sks6___. All rights reserved.
//

import UIKit

var data: [String] = [String]()

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var toDoTable: UITableView!
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.toDoTable.dequeueReusableCellWithIdentifier("default", forIndexPath: indexPath)
        
        cell.textLabel?.text = data[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if NSUserDefaults.standardUserDefaults().objectForKey("data") != nil {
            data = NSUserDefaults.standardUserDefaults().objectForKey("data") as! [String]
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

