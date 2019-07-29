//
//  newtable2.swift
//  Plant Identifier
//
//  Created by harsh on 05/05/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import Foundation
import Foundation
import UIKit
import WebKit

class newtableview2 : UIViewController{
    
    @IBOutlet weak var lbl: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    var nameflow = ""
    var imagenew = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       lbl.text = nameflow
       img.image = imagenew
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
