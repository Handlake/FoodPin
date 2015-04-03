//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by Cayden on 2015. 3. 24..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var backgroundImageView : UIImageView!
    @IBOutlet weak var dialogView: UIView!
    
    override func viewDidLoad() {
        var blurEffect = UIBlurEffect(style: .Dark)
        var blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        let scale = CGAffineTransformMakeScale(0.0, 0.0)
        let translate = CGAffineTransformMakeTranslation(0, 500)
        dialogView.transform = CGAffineTransformConcat(scale, translate)
    }
    
    
    override func viewDidAppear(animated: Bool) {
       
        
//        UIView.animateWithDuration(0.8, delay: 0.0, options: nil, animations: { () -> Void in
//            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//            
//            }, completion: nil);
        
        
//        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: nil, animations: { () -> Void in
//            self.dialogView.transform = CGAffineTransformMakeScale(1, 1)
//        }, completion: nil)
        
        
        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.5, options: nil, animations: {
            let scale = CGAffineTransformMakeScale(1, 1)
            let translate = CGAffineTransformMakeTranslation(0, 0)
            
            self.dialogView.transform = CGAffineTransformConcat(scale, translate)
            
        }, completion: nil)
    }
    
    
}
