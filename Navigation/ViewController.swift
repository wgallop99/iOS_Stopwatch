//
//  ViewController.swift
//  Navigation
//
//  Created by Will Gallop on 11/10/14.
//  Copyright (c) 2014 Will Gallop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var time: UILabel!
    
    var timer = NSTimer()
    var count = 0
    
    @IBAction func Pause(sender: AnyObject) {
        timer.invalidate()
        count = 0
        time.text = "0"
        
    }
    
    
    @IBAction func Play(sender: AnyObject) {
        
        
    }

    @IBAction func Reset(sender: AnyObject) {
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
        println("test")
        
    }
    
    func result() {
        
        count++
        time.text = String(count)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

