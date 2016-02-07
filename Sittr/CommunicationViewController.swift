//
//  CommunicationViewController.swift
//  Sittr
//
//  Created by Brandon Arroyo on 2/7/16.
//  Copyright © 2016 Brandon Arroyo. All rights reserved.
//

import UIKit

class CommunicationViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    

    var list: [String]!
    let defaults = NSUserDefaults.standardUserDefaults()
    
      override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        
        list = defaults.objectForKey("Name") as! [String]
        return list.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    @available(iOS 2.0, *)
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = tableView.dequeueReusableCellWithIdentifier("client",forIndexPath: indexPath) as! ContactTableViewCell
        
        
        
        var list = defaults.objectForKey("Name") as! [String]
        cell.comNameLabel.text = list[indexPath.row]
        print("\(list[indexPath.row])")
        return cell
    }
    
    
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let cell = sender as! UITableViewCell
        let indexPath = tableView.indexPathForCell(cell)
      
        let title = list[indexPath!.row]
       
        let messageViewController = segue.destinationViewController as! MessageViewController
        messageViewController.name = title
    
    }


}
