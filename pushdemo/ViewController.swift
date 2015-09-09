//
//  ViewController.swift
//  pushdemo
//
//  Created by Talha Qamar on 9/9/15.
//  Copyright (c) 2015 Nerddevelopers. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
        
        var push = PFPush()
        push.setMessage("This is test")
        push.sendPushInBackgroundWithBlock(
            {
                (result:Bool , error: NSError?) -> Void in
                   println(result)
              
        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

