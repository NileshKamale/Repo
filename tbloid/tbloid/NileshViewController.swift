//
//  ViewController.swift
//  tbloid
//
//  Created by Mac on 25/12/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

import UIKit

class NileshViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var newTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.newTableView.separatorColor = UIColor.redColor()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 25
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.newTableView.dequeueReusableCellWithIdentifier("NileshCell") as TableCell
//        let label = cell.viewWithTag(1) as UILabel
        cell.label2.text = "table ready"
        
        //let button = cell.viewWithTag(2) as UIButton
       cell.button2.addTarget(self, action: Selector("buttonClicked:"), forControlEvents: UIControlEvents.TouchUpInside)
        
        cell.button2.setTitle("Click", forState: UIControlState.Normal)
        cell.button2.setTitle("High", forState: UIControlState.Highlighted)
        cell.button2.tag = indexPath.row
        
        return cell
    }
    
    func buttonClicked(sender:UIButton){
        let cell = self.newTableView.cellForRowAtIndexPath(NSIndexPath(forRow: sender.tag
            , inSection: 0)) as TableCell
        cell.label2.text = "TextChanged"
        
        sender.setTitleColor(UIColor.blackColor(), forState:UIControlState.Normal)
        
        
        
    }



}

