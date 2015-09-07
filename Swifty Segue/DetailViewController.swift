//
//  DetailViewController.swift
//  Swifty Segue
//
//  Created by Zac Wolff on 9/7/15.
//  Copyright (c) 2015 GH4HUB Ghana Limited. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController
{

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var detailView: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func CancelDetailBarButton(sender: AnyObject)
    {
        dismissViewControllerAnimated(true, completion: nil)
    }

}