//
//  MoralTableView.swift
//  TimeOut
//
//  Created by Niela Sultana on 11/23/14.
//  Copyright (c) 2014 Niela Sultana. All rights reserved.
//

import Foundation
import UIKit

class MoralTableVIew: UITableViewController {
    
    var morals = [Moral]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.morals = [Moral(name: "Bad Habits"), Moral(name: "Educational Lessons"), Moral(name: "Equality"), Moral(name: "Help Others"), Moral(name: "Hurting Others"), Moral(name: "Lying"), Moral(name: "Stealing"), Moral(name: "Teasing Others"), Moral(name: "The Golden Rule"), Moral(name: "Working Together")]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.morals.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let Cell = self.tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        var moral: Moral
        
        moral = morals[indexPath.row]
        
        Cell.textLabel.text = moral.name
        
        return Cell
    }
}
