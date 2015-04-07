//
//  AddTableViewController.swift
//  FoodPin
//
//  Created by Cayden on 2015. 4. 1..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import UIKit
import CoreData

class AddTableViewController : UITableViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    @IBOutlet weak var imageView:UIImageView!
    @IBOutlet var name: UITextField!
    @IBOutlet var type: UITextField!
    @IBOutlet var location: UITextField!

    @IBOutlet var visitedYes: UIButton!
    @IBOutlet var visitedNo: UIButton!
    
    var isVisied : Bool! = false
    
    var restaurant : Restaurant!
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0 {
            if UIImagePickerController.isSourceTypeAvailable(.PhotoLibrary) {
                let imagePicker = UIImagePickerController()
                imagePicker.allowsEditing = false
                imagePicker.sourceType = .PhotoLibrary
                imagePicker.delegate = self
                
                self.presentViewController(imagePicker, animated: true, completion: nil)
            }
        }
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.clipsToBounds = true
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        UIApplication.sharedApplication().setStatusBarStyle(.LightContent, animated: false)
    }
    
    @IBAction func yesButtonDidPush(sender: AnyObject) {
        self.isVisied = true
        self.visitedYes.backgroundColor = UIColor.redColor()
        self.visitedNo.backgroundColor = UIColor.grayColor()
    }
    
    @IBAction func noButtonDidPush(sender: AnyObject) {
        self.isVisied = false
        self.visitedYes.backgroundColor = UIColor.grayColor()
        self.visitedNo.backgroundColor = UIColor.redColor()
    }
    
    @IBAction func saveDidPush(sender: AnyObject) {
        
        var missedField : String! = ""
    
        
        if count(self.name.text) == 0 {
            missedField = "name"
        }
        
        if count(self.type.text) == 0 {
            missedField = "type"
        }
        
        if count(self.location.text) == 0 {
            missedField = "location"
        }
        
        if count(missedField) > 0 {
            let alertController = UIAlertController(title: "Opps", message: "'\(missedField)'칸이 비어있다 이 생키야!!", preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            
            self.presentViewController(alertController, animated: true, completion: nil)
        
        } else if let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext {
            restaurant = NSEntityDescription.insertNewObjectForEntityForName("Restaurant", inManagedObjectContext: managedObjectContext) as! Restaurant
            
            restaurant.name = self.name.text
            restaurant.type = self.type.text
            restaurant.location = self.location.text
            restaurant.image = UIImagePNGRepresentation(imageView.image)
            restaurant.isVisited = isVisied
            
            var e: NSError?
            if managedObjectContext.save(&e) != true {
                println("insert error : \(e!.localizedDescription)")
                return
            }
            performSegueWithIdentifier("unwindToHomeScreen", sender: self)
        }

        
    }
    
}
