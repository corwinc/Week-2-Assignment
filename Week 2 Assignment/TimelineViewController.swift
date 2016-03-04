//
//  TimelineViewController.swift
//  Week 2 Assignment
//
//  Created by Corwin Crownover on 2/10/16.
//  Copyright © 2016 Corwin Crownover. All rights reserved.
//

import UIKit

class TimelineViewController: UIViewController {

    // Outlets & Variables
    @IBOutlet weak var timelineScrollView: UIScrollView!
    
    
    
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timelineScrollView.contentSize = CGSize(width: 320, height: 1564)

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
    
    
    
    // Actions
    @IBAction func didPressConversationsButton(sender: AnyObject) {
        performSegueWithIdentifier("conversationsSegue", sender: self)
    }
    

}
