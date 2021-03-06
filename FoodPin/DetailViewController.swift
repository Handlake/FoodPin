//
//  DetailViewController.swift
//  FoodPin
//
//  Created by Cayden on 2015. 3. 18..
//  Copyright (c) 2015년 story-ios. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    var restaurant:Restaurant!
    @IBOutlet var tableView : UITableView!
    @IBOutlet weak var restaurantImageView : UIImageView!
//    @IBOutlet weak var locationLabel : UILabel!
//    @IBOutlet weak var typeLabel : UILabel!
    
    var restrumentImage : String!
    var location : String!
    var type : String!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        self.tableView.separatorColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        
        self.restaurantImageView.image = UIImage(data: restaurant.image)
        self.title = restaurant.name
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 4
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! DetailTableViewCell;
        cell.mapButton.hidden = true
        
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
            cell.mapButton.hidden = false
        case 3:
            cell.fieldLabel.text = "Been there"
            cell.valueLabel.text = (restaurant.isVisited.boolValue) ? "Yes" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        return cell;
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showMap" {
            let destinationController = segue.destinationViewController as! MapViewController
            destinationController.restaurant = restaurant
        }
    }
    
    @IBAction func close(segue:UIStoryboardSegue)
    {
        
    }
}
