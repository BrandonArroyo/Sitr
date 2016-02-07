//
//  petsViewController.swift
//  Sittr
//
//  Created by Brandon Arroyo on 2/6/16.
//  Copyright © 2016 Brandon Arroyo. All rights reserved.
//

import UIKit
import AFNetworking

class petsViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    
    var imageArray: [String] = []
    var descriptionArray: [String] = []
    var ownerArray: [String] = []
    
    @IBOutlet var collectionView: UICollectionView!
    
    @IBOutlet var petsTabBar: UITabBarItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        collectionView.delegate = self
        self.navigationController!.topViewController!.title="Pets"
        imageArray.append("k707eVo.jpg")
        imageArray.append("YrdJcBu.jpg")
        imageArray.append("aFUC3bF.jpg")
        imageArray.append("k707eVo.jpg")
        imageArray.append("YrdJcBu.jpg")
        imageArray.append("aFUC3bF.jpg")
        imageArray.append("k707eVo.jpg")
        imageArray.append("YrdJcBu.jpg")
        imageArray.append("aFUC3bF.jpg")
        imageArray.append("k707eVo.jpg")
        
        descriptionArray.append("this is a cute dog that needs your help 1 ")
        descriptionArray.append("this is a cute dog that needs your help 2 ")
        descriptionArray.append("this is a cute dog that needs your help 3 ")
        descriptionArray.append("this is a cute dog that needs your help 4 ")
        descriptionArray.append("this is a cute dog that needs your help   5")
        descriptionArray.append("this is a cute dog that needs your help 6 ")
        descriptionArray.append("this is a cute dog that needs your help 7")
        descriptionArray.append("this is a cute dog that needs your help 8")
        descriptionArray.append("this is a cute dog that needs your help 9")
        descriptionArray.append("this is a cute dog that needs your help 10")
        ownerArray.append("Brandon Arroyo")
        ownerArray.append("devan H")
        ownerArray.append("kyle wilson")
        ownerArray.append("karrie cheng")
        ownerArray.append("rafa moreno")
        ownerArray.append("jenny gonz")
        ownerArray.append("greg bob")
        ownerArray.append("tough wiggly")
        ownerArray.append("happy birthday")
        ownerArray.append("test johnson")
        
      
        print(imageArray[0])
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: "refreshControlAction:", forControlEvents: UIControlEvents.ValueChanged)
        collectionView.insertSubview(refreshControl, atIndex: 0)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        
        super.viewWillAppear(animated)
        
        
        
//         imageArray.append("YrdJcBu.jpg")
            self.navigationController!.topViewController!.title="Pets"
        
    }
    
    @available(iOS 6.0, *)
    internal func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        
        return imageArray.count
    }
    
    
    @available(iOS 6.0, *)
    public func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("petImageCell",forIndexPath: indexPath) as! petsCollectionViewCell
        let u = "http://i.imgur.com/\(imageArray[indexPath.row])"
      
         let url = NSURL(string: u)
        cell.petImage.setImageWithURL(url!)
         print("row \(indexPath.row)")
        
        return cell
        
        
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let cell = sender as! UICollectionViewCell
        let indexPath = collectionView.indexPathForCell(cell)
        let  image = imageArray[indexPath!.row]
        let overview = descriptionArray[indexPath!.row]
        let n = ownerArray[indexPath!.row]
        let DetailViewController = segue.destinationViewController as! petDetailViewController
        DetailViewController.Url = image
        DetailViewController.overviewText = overview
        DetailViewController.name = n
    }


}
