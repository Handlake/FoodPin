//
//  ShareViewController.swift
//  FoodPin
//
//  Created by Cayden on 2015. 3. 24..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {

    
    @IBOutlet weak var backgroundView: UIImageView!
    
    
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var twitterButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    @IBOutlet weak var emailButton: UIButton!
    
    
    
    override func viewDidLoad() {
        let blurEffect = UIBlurEffect(style: .Light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        
        blurEffectView.frame = view.bounds
        backgroundView.addSubview(blurEffectView)

        
        
        let upTranslate = CGAffineTransformMakeTranslation(0, 1000)
        let downTranslate = CGAffineTransformMakeTranslation(0, -500)
        
        facebookButton.hidden = true
        twitterButton.hidden = true
        messageButton.hidden = true
        emailButton.hidden = true
        
        facebookButton.transform = upTranslate
        messageButton.transform = upTranslate
        
        twitterButton.transform = downTranslate
        emailButton.transform = downTranslate
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.9, options: nil, animations: {
            let translate = CGAffineTransformMakeTranslation(0, 0)
            
            self.facebookButton.transform = translate
            self.emailButton.transform = translate
            
            self.facebookButton.hidden = false
            self.emailButton.hidden = false

        }, completion: nil)
        
        
        UIView.animateWithDuration(0.7, delay: 0.2, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.9, options: nil, animations: {
            let translate = CGAffineTransformMakeTranslation(0, 0)
            
            self.twitterButton.transform = translate
            self.messageButton.transform = translate
            
            self.twitterButton.hidden = false
            self.messageButton.hidden = false
            
        }, completion : nil)
        
        
//        UIView.animateWithDuration(0.7, delay: 0.0, options: nil, animations: {
//            let translate = CGAffineTransformMakeTranslation(0, 0)
//            
//            self.facebookButton.transform = translate
//            self.emailButton.transform = translate
//
//            self.facebookButton.hidden = false
//            self.emailButton.hidden = false
//            }, completion: nil)
//        
//        UIView.animateWithDuration(0.7, delay: 0.5, options: nil, animations: {
//            let translate = CGAffineTransformMakeTranslation(0, 0)
//            
//            self.twitterButton.transform = translate
//            self.messageButton.transform = translate
//            
//            self.twitterButton.hidden = false
//            self.messageButton.hidden = false
//            
//            }, completion: nil)
        
    }
}
