//
//  ViewController2.swift
//  schoolCountdownApp
//
//  Created by Brian on 10/31/16.
//  Copyright © 2016 WAINOM. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    @IBOutlet weak var dateLabel: UILabel!

    @IBOutlet weak var markerLabel: UILabel!
    let formatter = NSDateFormatter()
    
    let userCalendar = NSCalendar.currentCalendar()
    
    let requestedComponent: NSCalendarUnit = [
        NSCalendarUnit.Month,
        NSCalendarUnit.Day,
        NSCalendarUnit.Hour,
        NSCalendarUnit.Minute,
        NSCalendarUnit.Second
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        
       self.markerLabel.text = "Until Finals :("
        
        // Do any additional setup after loading the view.
        let timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: #selector(printTime), userInfo: nil, repeats: true)
        
        timer.fire()
        
        
        
    }
    func printTime(){
        formatter.dateFormat = "MM/dd/yy hh:mm:ss a"
        let startTime = NSDate()
        let endTime = formatter.dateFromString("5/30/17 12:00:00 a")
        
        
        let timeDifference = userCalendar.components(requestedComponent, fromDate: startTime, toDate:endTime!, options: [])
        
        
        dateLabel.text = "\(timeDifference.month) Months \(timeDifference.day) Days \(timeDifference.minute) Minutes \(timeDifference.second) Seconds"
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
