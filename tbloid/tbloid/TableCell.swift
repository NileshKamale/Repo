//
//  File.swift
//  tbloid
//
//  Created by Mac on 25/12/16.
//  Copyright (c) 2016 Mac. All rights reserved.
//

import Foundation
import UIKit

class TableCell : UITableViewCell {
    
    
    @IBOutlet weak var label2: UILabel!
    
    
    @IBOutlet weak var button2: UIButton!
    
     override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.separatorInset = UIEdgeInsets(top:10, left: 10, bottom: 10, right: 10)
        
    }

     required init(coder aDecoder: NSCoder) {
         super.init(coder: aDecoder)
     }
    
    
    
}


