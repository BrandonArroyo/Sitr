//
//  petDetailViewController.swift
//  Sittr
//
//  Created by Brandon Arroyo on 2/7/16.
//  Copyright © 2016 Brandon Arroyo. All rights reserved.
//

import UIKit

class petDetailViewController: UIViewController {
    
   
    
    @IBOutlet var scrollview: UIScrollView!
    @IBOutlet var infoView: UIView!
     let defaults = NSUserDefaults.standardUserDefaults()
    var Url: String!
    var overviewText: String!
    @IBOutlet var largePetImage: UIImageView!
    var name: String!
    
    @IBOutlet var dogName: UILabel!
    @IBOutlet var overview: UILabel!
    
    @IBOutlet var buttonWatch: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
         scrollview.contentSize = CGSize(width: scrollview.frame.size.width, height: infoView.frame.origin.y + infoView.frame.height  )
        
        
        
         let u = "http://i.imgur.com/\(Url)"
        print(u)
         let url = NSURL(string: u)
         largePetImage.setImageWithURL(url!)
        
        self.overview.text = overviewText
        dogName.text = name
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func saveItem(sender: AnyObject) {
       
        var list = defaults.objectForKey("Name") as! [String]
        list.append(name)
        defaults.setObject(list, forKey: "Name")
        defaults.synchronize()
        buttonWatch.setTitle(":D", forState: UIControlState.Normal)
        print("SAVED")
        buttonWatch.enabled = false 
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
