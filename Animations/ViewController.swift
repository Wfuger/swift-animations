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
    @IBOutlet var alienImage: UIImageView!
    @IBAction func updateimage(sender: AnyObject) {
        if alien <= 5 {
            alien++
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


}

