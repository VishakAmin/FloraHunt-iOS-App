//
//  FlowerClassification.swift
//  Plant Identifier
//
//  Created by harsh on 25/04/19.
//  Copyright © 2019 harsh. All rights reserved.
//

import Foundation
import UIKit
import SafariServices

class FlowerClassification : UIViewController	{
var imageFileName: String!
    var search = ""
    var imagesent : UIImage? = nil
    let model = Oxford102()
    var trimmed = ""
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var linktosafari: UIButton!
    

    @IBOutlet weak var outputLabel: UILabel!
    
    @IBOutlet weak var problabel: UILabel!
    override func viewDidLoad() {
    super.viewDidLoad()
        imageView.image = imagesent
    setupView()
}


    
    private func setupView() {
    
    
    let output = classifyFlower()
        let probability = Int(output.prob[output.classLabel]! * 100)
    let emoji = emojiBasedOnProbability(probability)
        outputLabel.text = "Flower Name : \(output.classLabel)"
        problabel.text = "Probability of Being this Flower : \(probability)% \(emoji)"
        search = "\(output.classLabel)"
    
        trimmed = search.replacingOccurrences(of: " ", with: "")
        
    }

    @IBAction func linkbtntapped(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.google.com/search?rlz=1C5CHFA_enIN838IN838&ei=7qzFXNrFCpOamgeG6pOQAg&q=\(String(describing:trimmed))&oq=\(String(describing:trimmed))r&gs_l=psy-ab.3..0i67l6j0i10j0i67l3.18294.21701..22030...0.0..0.1423.7113.5-3j3j2......0....1..gws-wiz.......0i71j0i131j0.HPeeeiuxQCs")! as URL, options: [:] ,completionHandler: nil)
        
    }
    
    
    private func classifyFlower() -> Oxford102Output{
  
    let scaledImage = imagesent?.scaleImage(newSize: CGSize.init(width: 227.0, height: 227.0))
    let buffer = scaledImage!.buffer()!
    guard let output = try? model.prediction(data: buffer) else {
        fatalError("Prediction process failed.")
    }
    return output
}

private func emojiBasedOnProbability(_ probability: Int) -> String {
    var emoji = ""
    if probability > 95 {
        emoji = "😎"
    } else if probability > 80 {
        emoji = "😉"
    } else if probability > 70 {
        emoji = "🤔"
    } else if probability > 50 {
        emoji = "😒"
    } else if probability > 30 {
        
        emoji = "😣"
    } else {
        
        emoji = "😫"
    }
    return emoji
}
      

}
