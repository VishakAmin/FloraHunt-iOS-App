//
//  ViewController.swift
//  Plant Identifier
//
//  Created by harsh on 08/04/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UICollectionViewController {
    

    //var imagePicker = UIImagePickerController()
    //var imageFileNames = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func cameratapped(_ sender: Any) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.camera) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = UIImagePickerControllerSourceType.camera
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
        
       
    }
    
    @IBAction func gallerytapped(_ sender: Any) {
    
    
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary){
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = UIImagePickerControllerSourceType.photoLibrary
            self.present(imagePicker, animated: true, completion: nil)
        }
    
    //MARK: - ImagePicker delegate
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            // imageViewPic.contentMode = .scaleToFill
            ImageView.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
}
}
