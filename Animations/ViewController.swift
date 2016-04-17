//
//  ViewController.swift
//  Animations
//
//  Created by Will Fuger on 4/16/16.
//  Copyright © 2016 boogiesquad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var alien = 1
    
    var timer = NSTimer()
    
    @IBOutlet var alienImage: UIImageView!
    
    @IBAction func updateimage(sender: AnyObject) {
        
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.15, target: self, selector: #selector(ViewController.doAnimation), userInfo: nil, repeats: true)
        
//        alien += 1
//        if alien == 3 {
//
//            alien = 1
//        
//        }
//        
//        if alien == 1 {
//            
//            UIView.animateWithDuration(1, animations: {
//                
//                self.alienImage.frame = CGRectMake(60, 200, 250, 250)
//                
//            })
//            
//        }
//        
//        if alien == 2 {
//            
//            UIView.animateWithDuration(1) {
//            
////              self.alienImage.alpha = 1
//            
//                self.alienImage.frame = CGRectMake(140, 295, 100, 100)
//
//            }
        
        
    }
    
    func doAnimation ()	{
        if alien <= 5 {
            
            alien += 1
            
        } else {
            
            alien = 1
            
        }
        
        alienImage.image = UIImage(named: "alien-\(alien).png")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func viewDidLayoutSubviews() { //this method sets the layout before the app loads
        
//        alienImage.center = CGPointMake(alienImage.center.x - 400, alienImage.center.y) 
        // sets image off the screen to the left before app's loaded
        
//        self.alienImage.alpha = 0
        // sets opacity of image to 0
        
//        self.alienImage.frame = CGRectMake(50, 175, 250, 250)
        
    }

    override func viewDidAppear(animated: Bool) {
     
//        UIView.animateWithDuration(1) {
        
//            self.alienImage.center = CGPointMake(self.alienImage.center.x + 400, self.alienImage.center.y)
            // set the end point to center of screen giving a slide in animation
            
//            self.alienImage.alpha = 1
            // sets opacity of image to 100 giving a fade in animation
            
//        }
        
    }
    
}

