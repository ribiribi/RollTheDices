//
//  ViewController.swift
//  RollTheDices
//
//  Created by user148108 on 2/20/19.
//  Copyright © 2019 user148108. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    var sixDDice: [UIImage] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        sixDDice = createImageArray(total: 6, imagePrefix: "dice")
    }

    
    func createImageArray (total: Int, imagePrefix: String) -> [UIImage]{
        
        var imagesArray: [UIImage] = []
        
        for imageCount in 0..<total{
            
            let imageName = "\(imagePrefix)-\(imageCount).jpg"
            let image = UIImage(named: imageName)!
            
            imagesArray.append(image)
        }
        
        return imagesArray
    }
    
    
    func animate (imageView: UIImageView, images: [UIImage]){
        
        imageView.animationImages = images
        imageView.animationDuration = 0.8
        imageView.animationRepeatCount = 0
        imageView.startAnimating()
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        animate (imageView: imageView, images: sixDDice)
    }
    
}

