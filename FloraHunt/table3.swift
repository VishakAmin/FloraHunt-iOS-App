//
//  table3.swift
//  Plant Identifier
//
//  Created by harsh on 28/04/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class newtableview2 : UIViewController {
    var getsettings = ""
    var getimage = UIImage()

    
    @IBOutlet weak var imageviewnow: UIImageView!
    
    @IBOutlet weak var labelnew: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        imageviewnow.image = getimage
         labelnew.text =  getsettings
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
