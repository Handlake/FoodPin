//
//  CustomTableViewCell.swift
//  FoodPin
//
//  Created by Cayden on 2015. 3. 13..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var goodIcon : UILabel!
    
    
    
    @IBOutlet weak var trailing: NSLayoutConstraint!

    override func awakeFromNib() {
        
//        println("TTTTT : \(trailing)")
//        let leftTrailing = NSLayoutConstraint(item: locationLabel, attribute: NSLayoutAttribute.Trailing, relatedBy: .Equal, toItem: self.contentView, attribute: .Trailing, multiplier: 1.0, constant: 20.0)
//        println("TTTT2 : \(leftTrailing)")
//
//        
//        trailing = leftTrailing
//        println("TTTTT : \(trailing)")
        
//        let heightThumb = NSLayoutConstraint(item: thumbnailImageView, attribute: .Height, relatedBy: .Equal, toItem:nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 60.0)
//        let widthThumb = NSLayoutConstraint(item: thumbnailImageView, attribute: .Width, relatedBy: .Equal, toItem:nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 60.0)
//        let topThumb = NSLayoutConstraint(item: thumbnailImageView, attribute: .Top, relatedBy: .Equal, toItem: self.contentView, attribute: .Top, multiplier: 1.0, constant: 2.0)
//        let leftThumb = NSLayoutConstraint(item: thumbnailImageView, attribute: .Left, relatedBy: .Equal, toItem: self.contentView, attribute: .Left, multiplier: 1.0, constant: 7.0)
//
//        thumbnailImageView.addConstraints([widthThumb, heightThumb, topThumb, leftThumb])
//        
//        
//        let heightName = NSLayoutConstraint(item: nameLabel, attribute: .Height, relatedBy: .Equal, toItem:nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 21.0)
//        let leftNameWithThumb = NSLayoutConstraint(item: nameLabel, attribute: .Left, relatedBy: .Equal, toItem: thumbnailImageView, attribute: .Right, multiplier: 1.0, constant: 11.0)
//        let topThumb = NSLayoutConstraint(item: nameLabel, attribute: .Top, relatedBy: .Equal, toItem: self.contentView, attribute: .Top, multiplier: 1.0, constant: 2.0)
//        
//        nameLabel.addConstraints([heightName, leftNameWithThumb, topThumb])
//        
//        
//        let heightType = NSLayoutConstraint(item: typeLabel, attribute: .Height, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute, multiplier: 1.0, constant: 21.0)
//        let bottomType = NSLayoutConstraint(item: typeLabel, attribute: .Bottom, relatedBy: .Equal, toItem: self.contentView, attribute: .Bottom, multiplier: 1.0, constant: 2.0)
//        let topTypeWithLocation = NSLayoutConstraint(item: typeLabel, attribute: .Top, relatedBy: .Equal, toItem: locationLabel, attribute: .Top, multiplier: 1.0, constant: 3.0)
//        let topTypeWithLocation = NSLayoutConstraint(item: typeLabel, attribute: NSLayoutAttribute.Leading, relatedBy: .Equal, toItem: nameLabel, attribute: NSLayoutAttribute.Leading, multiplier: <#CGFloat#>, constant: <#CGFloat#>)
//        
//        typeLabel.addConstraints([heightType, bottomType, topTypeWithLocation])
//        
    }
    
    
    override func drawRect(rect: CGRect) {
        
        
    }
}
