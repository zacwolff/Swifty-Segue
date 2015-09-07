//
//  ViewController.swift
//  Swifty Segue
//
//  Created by Zac Wolff on 9/7/15.
//  Copyright (c) 2015 GH4HUB Ghana Limited. All rights reserved.
//

import UIKit

class ViewController: UITableViewController, UITableViewDelegate, UITableViewDataSource
{
    var billsPayment = [billPayments]()
    
    struct billPayments
    {
        let title: String
    }
    
    func initializeMerchants()
    {
        self.billsPayment = [
            billPayments(title: "Red"),
            billPayments(title: "Blue"),
            billPayments(title: "Purple"),
            billPayments(title: "Pink"),
            billPayments(title: "Brown")]
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        initializeMerchants()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITableView
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return billsPayment.count
    }
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return "SELECT NETWORK"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let identifier: String = "BuyAirtimeCell"
        
        var cell: TableViewCell! = tableView.dequeueReusableCellWithIdentifier(identifier) as? TableViewCell
        
        if cell == nil
        {
            cell = TableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier)
        }
        
        cell!.titleLabel!.text = billsPayment[indexPath.row].title
        
        return cell!
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
        return 67.0
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
    {
        println("\(indexPath.row)")
        
        self.performSegueWithIdentifier("airtime", sender: nil)
        println("Airtime cell was selected")
        
        if indexPath.row == 0
        {
            
        }
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        println("Segue was initiated")
        if (segue.identifier == "detail")
        {
            println("Detail segue was initiated")
        }
    }
}