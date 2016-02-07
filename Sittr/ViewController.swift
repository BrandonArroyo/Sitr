//
//  ViewController.swift
//  Sittr
//
//  Created by Brandon Arroyo on 2/6/16.
//  Copyright © 2016 Brandon Arroyo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let defaults = NSUserDefaults.standardUserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setObjectWithPersistance([String](), key: "Name")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setObjectWithPersistance(value: AnyObject?, key: String) {
        if (defaults.objectForKey(key) == nil) {
            defaults.setObject(value, forKey: key)
        }
    }
    


}

