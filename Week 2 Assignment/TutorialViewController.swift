//
//  TutorialViewController.swift
//  Week 2 Assignment
//
//  Created by Corwin Crownover on 2/10/16.
//  Copyright © 2016 Corwin Crownover. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController, UIScrollViewDelegate {

    // Outlets
    @IBOutlet weak var tutorialScrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var spinUIView: UIImageView!
    
    
    
    
    // Variables
    
    
    
    // viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tutorialScrollView.contentSize = CGSize(width: 1280, height: 568)
        tutorialScrollView.delegate = self
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    // Functions - Scroll Events
    
/*    func scrollViewDidScroll(scrollView: UIScrollView) {
        let spinUIViewConvertedAlpha = convertValue(translation.x, r1Min: 160, r1Max: 480, r2Min: 0, r2Max: 1)
    } */
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // Get the current page based on the scroll offset
        let page : Int = Int(round(scrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        pageControl.currentPage = page
        
        if page == 3 {
            pageControl.hidden = true
            UIView.animateWithDuration(0.3, animations: { (
                self.spinUIView.alpha = 1)
            })
        } else {
            pageControl.hidden = false
            self.spinUIView.alpha = 0
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
