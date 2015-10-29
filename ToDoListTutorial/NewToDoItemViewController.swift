//
//  NewToDoItemViewController.swift
//  ToDoListTutorial
//
//  Created by Scotty Shaw on 10/29/15.
//  Copyright © 2015 ___sks6___. All rights reserved.
//

import UIKit

class NewToDoItemViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    
    @IBAction func addNewToDoItem(sender: AnyObject) {
        let newToDoItem = inputField.text!
        
        data.append(newToDoItem)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
