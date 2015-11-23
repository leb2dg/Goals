//
//  AnalyticsViewController.swift
//  Goals
//
//  Created by Lauren Barker on 11/23/15.
//  Copyright © 2015 Lauren Barker. All rights reserved.
//

import UIKit
import Foundation

class AnalyticsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        // Do any additional setup after loading the view.
    }
    
    func loadData() {
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(NSURL(string: "http://api.flurry.com/eventMetrics/Summary?apiAccessCode=PRQGR6S2NZK5WGR8YDT5&apiKey=6FJJ9XQKW77JTSHP97NG&startDate=2015-11-23&endDate=2015-11-27")!) {(data, response, error) in
            print(NSString(data: data!, encoding: NSUTF8StringEncoding))
        }
        
        task.resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
