//
//  MessageViewController.swift
//  Sittr
//
//  Created by Brandon Arroyo on 2/7/16.
//  Copyright © 2016 Brandon Arroyo. All rights reserved.
//

import UIKit

class MessageViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var name: String!
    var mess: [String] = []
    @IBOutlet weak var messagecomponent: UIView!
    @IBOutlet weak var textBar: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.navigationController!.topViewController!.title = name
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
      
    }
    
    @IBAction func moveTextBar(sender: AnyObject) {
        print("somethin")
        UIView.animateWithDuration(0.5, animations: {
            self.messagecomponent.center.y -= 220
        })
      
        
    }
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        
        return mess.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("client",forIndexPath: indexPath) as! ContactTableViewCell
//
//        
//        
//        
//        cell.comNameLabel.text = list[indexPath.row]
//        print("\(list[indexPath.row])")
        return cell
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
