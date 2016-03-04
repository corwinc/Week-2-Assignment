//
//  SettingsViewController.swift
//  Week 2 Assignment
//
//  Created by Corwin Crownover on 2/10/16.
//  Copyright © 2016 Corwin Crownover. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    // Outlets & Variables
    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.contentSize = CGSize(width: 320, height: 695)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // Fuctions
    @IBAction func onCloseButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
