//
//  IntroViewController.swift
//  Week 2 Assignment
//
//  Created by Corwin Crownover on 2/10/16.
//  Copyright © 2016 Corwin Crownover. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate {

    // Outlets & Variables
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollFeedImage: UIImageView!
    
    @IBOutlet weak var photo1: UIImageView!
    @IBOutlet weak var photo2: UIImageView!
    @IBOutlet weak var photo3: UIImageView!
    @IBOutlet weak var photo4: UIImageView!
    @IBOutlet weak var photo5: UIImageView!
    @IBOutlet weak var photo6: UIImageView!
    
    
    
    // viewDidload
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSizeMake(320, scrollFeedImage.image!.size.height)
        scrollView.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    // Functions
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // Positioning and translating the tiles, r2Min = storyboard start position of tile
        let photo1Y = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 321)
        let photo1X = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 93)
        let photo1Translate = CGAffineTransformMakeTranslation(photo1X, photo1Y)
        
        let photo2Y = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 244)
        let photo2X = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 102)
        let photo2Translate = CGAffineTransformMakeTranslation(photo2X, photo2Y)
        
        let photo3Y = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 405)
        let photo3X = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 78)
        let photo3Translate = CGAffineTransformMakeTranslation(photo3X, photo3Y)
        
        let photo4Y = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 390)
        let photo4X = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 35)
        let photo4Translate = CGAffineTransformMakeTranslation(photo4X, photo4Y)
        
        let photo5Y = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 398)
        let photo5X = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: -142)
        let photo5Translate = CGAffineTransformMakeTranslation(photo5X, photo5Y)
        
        let photo6Y = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: 424)
        let photo6X = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 0, r2Max: -163)
        let photo6Translate = CGAffineTransformMakeTranslation(photo6X, photo6Y)
        
        // Scaling the tiles, r2Min = start scale of tile as seen on storyboard
        let photo1ConvertedScale = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 1, r2Max: 1.0)
        let photo1Scale = CGAffineTransformMakeScale(photo1ConvertedScale, photo1ConvertedScale)
        
        let photo2ConvertedScale = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        let photo2Scale = CGAffineTransformMakeScale(photo2ConvertedScale, photo2ConvertedScale)
        
        let photo3ConvertedScale = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        let photo3Scale = CGAffineTransformMakeScale(photo3ConvertedScale, photo3ConvertedScale)
        
        let photo4ConvertedScale = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        let photo4Scale = CGAffineTransformMakeScale(photo4ConvertedScale, photo4ConvertedScale)
        
        let photo5ConvertedScale = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        let photo5Scale = CGAffineTransformMakeScale(photo5ConvertedScale, photo5ConvertedScale)
        
        let photo6ConvertedScale = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 2, r2Max: 1)
        let photo6Scale = CGAffineTransformMakeScale(photo6ConvertedScale, photo6ConvertedScale)
        
        // Rotating tiles
        let photo1ConvertedRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        let photo1Rotate = CGAffineTransformMakeDegreeRotation(photo1ConvertedRotation)
        
        let photo2ConvertedRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -10, r2Max: 0)
        let photo2Rotate = CGAffineTransformMakeDegreeRotation(photo2ConvertedRotation)

        let photo3ConvertedRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 8, r2Max: 0)
        let photo3Rotate = CGAffineTransformMakeDegreeRotation(photo3ConvertedRotation)

        let photo4ConvertedRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 8, r2Max: 0)
        let photo4Rotate = CGAffineTransformMakeDegreeRotation(photo4ConvertedRotation)

        let photo5ConvertedRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: 6, r2Max: 0)
        let photo5Rotate = CGAffineTransformMakeDegreeRotation(photo5ConvertedRotation)

        let photo6ConvertedRotation = convertValue(scrollView.contentOffset.y, r1Min: 0, r1Max: 568, r2Min: -6, r2Max: 0)
        let photo6Rotate = CGAffineTransformMakeDegreeRotation(photo6ConvertedRotation)
        
        // Calling individual transformations (comment out unused transform constants above to be able to use)
        //photo1.transform = CGAffineTransformMakeTranslation(photo1X, photo1Y)
        //photo1.transform = CGAffineTransformMakeScale(photo1ConvertedScale, photo1ConvertedScale)
        //photo1.transform = CGAffineTransformMakeDegreeRotation(photo1ConvertedRotation)
        
        //photo1.transform = CGAffineTransformMakeScale(1, 1.2)
        //photo1.transform = CGAffineTransformMakeDegreeRotation(10)
        
        //Combining all transformations
        photo1.transform = CGAffineTransformConcat(photo1Rotate, CGAffineTransformConcat(photo1Scale, photo1Translate))
        photo2.transform = CGAffineTransformConcat(photo2Rotate, CGAffineTransformConcat(photo2Scale, photo2Translate))
        photo3.transform = CGAffineTransformConcat(photo3Rotate, CGAffineTransformConcat(photo3Scale, photo3Translate))
        photo4.transform = CGAffineTransformConcat(photo4Rotate, CGAffineTransformConcat(photo4Scale, photo4Translate))
        photo5.transform = CGAffineTransformConcat(photo5Rotate, CGAffineTransformConcat(photo5Scale, photo5Translate))
        photo6.transform = CGAffineTransformConcat(photo6Rotate, CGAffineTransformConcat(photo6Scale, photo6Translate))
    }
    

    
    
    

    
    
    
    
    
}
