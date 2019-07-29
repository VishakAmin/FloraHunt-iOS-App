//
//  ViewController.swift
//  Plant Identifier
//
//  Created by harsh on 25/04/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import Foundation
import UIKit
import UIKit
import MobileCoreServices

class ViewController1: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {


    var dataObject : String = ""
    
     var imagePicker = UIImagePickerController()
    @IBOutlet weak var takePhoto: UIButton!
    
    @IBOutlet weak var cameraRoll: UIButton!
    
    @IBOutlet weak var titleText: UILabel!
    
    ///@IBOutlet weak var cameraStream: UIImageView!
    
    var newMedia: Bool?
    
    let model = Oxford102()
    
    @IBAction func useCamera(_ sender: AnyObject) {
        if(UIImagePickerController .isSourceTypeAvailable(UIImagePickerControllerSourceType.camera)){
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            //If you dont want to edit the photo then you can set allowsEditing to false
            imagePicker.allowsEditing = true
            imagePicker.delegate = self
            self.present(imagePicker, animated: true, completion: nil)
        }
        else{
            let alert  = UIAlertController(title: "Warning", message: "You don't have camera", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func useCameraRoll(_ sender: AnyObject){
        
                imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
        //If you dont want to edit the photo then you can set allowsEditing to false
        imagePicker.allowsEditing = true
        imagePicker.delegate = self
        self.present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let mediatype = info[UIImagePickerControllerMediaType] as! NSString
        
        self.dismiss(animated: true, completion: nil)
        
        if mediatype.isEqual(to: kUTTypeImage as String) {
            let image = info[UIImagePickerControllerOriginalImage]
                as! UIImage
            
            //go to next screen
            let nextscreen = self.storyboard?.instantiateViewController(withIdentifier: "screen2") as! FlowerClassification
            
            self.navigationController?.pushViewController (nextscreen,animated: true)
            nextscreen.imagesent = image
            
            
          
            
        }
        

    }
    

   

    override func viewDidLoad() {
        super.viewDidLoad()
        takePhoto.layer.cornerRadius = 80
        cameraRoll.layer.cornerRadius = 80
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    
    
    
    
}


