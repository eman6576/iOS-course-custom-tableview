//
//  ViewController.swift
//  MyTableView
//
//  Created by Emanuel  Guerrero on 3/9/16.
//  Copyright © 2016 Project Omicron. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!
    
    var uglyThings = ["https://s-media-cache-ak0.pinimg.com/originals/f1/9a/51/f19a5199180cc1f5c82bb5367fca65b8.jpg", "http://www.dailyactor.com/wp-content/uploads/2015/11/mean-things.jpg", "http://application.denofgeek.com/images/gb/25bb/gremlins2.jpg", "http://i.telegraph.co.uk/multimedia/archive/01565/blobfish_1565953c.jpg", "http://2.bp.blogspot.com/_ym-eqNRfJpA/SrQ9KqvREEI/AAAAAAAAEaA/UzVYGyyan9M/s400/Ugly_dog.jpg"]
    
    var uglyTitle = ["Man this is uuuugly", "This one isn't so bad", "I wouldn't want to look like this", "Woo man. No thanks!", "Somebody turn off the screen!"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCellWithIdentifier("UglyCell") as? UglyCell {
            var image: UIImage!
            
            let url = NSURL(string: uglyThings[indexPath.row])!
            if let data = NSData(contentsOfURL: url) {
                image = UIImage(data: data)
            } else {
                image = UIImage(named: "dog")
            }
            
            cell.configureCell(image, text: uglyTitle[indexPath.row])
            
            return cell
        } else {
            return UglyCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uglyThings.count
    }
}

