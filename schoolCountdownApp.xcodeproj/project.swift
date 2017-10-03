//
//  ViewController.swift
//  schoolCountdownApp
//
//  Created by Brian on 10/31/16.
//  Copyright © 2016 WAINOM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = ViewController1(nibName: "ViewController1", bundle:nil)
        self.addChildViewController(vc1)
        vc1.didMoveToParentViewController(self)
        self.scrollView.addSubview(vc1.view)
        
        
        
        let vc2 = ViewController2(nibName: "ViewController2", bundle:nil)
        var frame2 = vc2.view.frame
        frame2.origin.x = self.view.frame.size.width
        vc2.view.frame = frame2
        
        self.addChildViewController(vc2)
        vc2.didMoveToParentViewController(self)
        self.scrollView.addSubview(vc2.view)
        
        
        let vc3 = ViewController3(nibName: "ViewController3", bundle:nil)
        var frame3 = vc3.view.frame
        frame3.origin.x = self.view.frame.size.width * 2
        vc3.view.frame = frame3
        
        self.addChildViewController(vc3)
        vc3.didMoveToParentViewController(self)
        self.scrollView.addSubview(vc3.view)
        
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.size.height)
        // Do any additional setup after loading the view, typically from a nib.
 
    }

 


        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

