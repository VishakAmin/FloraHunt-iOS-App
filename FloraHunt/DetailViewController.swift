//
//  DetailViewController.swift
//  Plant Identifier
//
//  Created by harsh on 07/05/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var flowername: UILabel!
    
    @IBOutlet weak var flowerimage: UIImageView!
    
    var imageflow = UIImage()
    
    var nameflow = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flowername.text = nameflow
        flowerimage.image = imageflow
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
