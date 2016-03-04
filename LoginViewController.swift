//
//  LoginViewController.swift
//  Week 2 Assignment
//
//  Created by Corwin Crownover on 2/10/16.
//  Copyright © 2016 Corwin Crownover. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    
    
    // Outlets & Variables
    @IBOutlet weak var loginScrollView: UIScrollView!
    @IBOutlet weak var fieldParentView: UIView!
    @IBOutlet weak var buttonParentView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    @IBOutlet weak var loginNavBar: UIImageView!
    
    
    var buttonInitialY: CGFloat!
    var buttonOffset: CGFloat!
    
    
    
    
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginScrollView.delegate = self
        
        loginScrollView.contentSize = loginScrollView.frame.size
        loginScrollView.contentInset.bottom = 100
        
        buttonInitialY = buttonParentView.frame.origin.y
        buttonOffset = -120
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        loginIndicator.hidden = true

        // Do any additional setup after loading the view.
    }
    
    
    
    
    // The main view is about to appear...
    override func viewWillAppear(animated: Bool) {
        // Set initial transform values 20% of original size
        let transform = CGAffineTransformMakeScale(0.2, 0.2)
        // Apply the transform properties of the views
        loginNavBar.transform = transform
        fieldParentView.transform = transform
        // Set the alpha properties of the views to transparent
        loginNavBar.alpha = 0
        fieldParentView.alpha = 0
    }
    
    
    
    
    // The main view appeared...
    override func viewDidAppear(animated: Bool) {
        //Animate the code within over 0.3 seconds...
        UIView.animateWithDuration(0.3) { () -> Void in
            // Return the views transform properties to their default states.
            self.fieldParentView.transform = CGAffineTransformIdentity
            self.loginNavBar.transform = CGAffineTransformIdentity
            // Set the alpha properties of the views to fully opaque
            self.fieldParentView.alpha = 1
            self.loginNavBar.alpha = 1
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
    // Functions - Scroll Events
    func scrollViewDidScroll(loginScrollView: UIScrollView) {
        if loginScrollView.contentOffset.y <= -50 {
            view.endEditing(true)
        }
    }
    
    
    
    
    // Functions - Keyboard Events
    func keyboardWillShow(notification: NSNotification!) {
        print("keyboardWillShow")
        buttonParentView.frame.origin.y = buttonInitialY + buttonOffset
        loginScrollView.contentOffset.y = loginScrollView.contentInset.bottom
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        buttonParentView.frame.origin.y = buttonInitialY
    }
    
    
    
    
    // Functions - Buttons
    // insert back button action, screen dismissal
    @IBAction func didPressLoginButton(sender: AnyObject) {
        
        if emailField.text!.isEmpty || passwordField.text!.isEmpty {
            let missingTextAlert = UIAlertController(title: "Email or Password Missing.", message: "Please try again.", preferredStyle: .Alert)
            let okAction = UIAlertAction(title: "OK", style: .Default) { (action) in
            }
            missingTextAlert.addAction(okAction)
            presentViewController(missingTextAlert, animated: true, completion: nil)
            
        } else if emailField.text == "email" && passwordField.text == "password" {
                print("correct credentials")
                loginIndicator.startAnimating()
                delay(2, closure: { () -> () in
                    print("delay, login")
                    self.loginIndicator.stopAnimating()
                    self.performSegueWithIdentifier("loginSegue", sender: nil)
                })
                
            } else {
                print("incorrect credentials")
                loginIndicator.startAnimating()
                delay(2, closure: { () -> () in
                    print("delay, wrong text alert")
                    self.loginIndicator.stopAnimating()
                    let wrongTextAlert = UIAlertController(title: "Wrong Info", message: "Try again", preferredStyle: .Alert)
                    let okAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    }
                    wrongTextAlert.addAction(okAction)
                    self.presentViewController(wrongTextAlert, animated: true, completion: nil)
                })
            }
    }
    
    
    
    
    
    
    @IBAction func didPressBackButton(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    
    
    
    
    
}




