//
//  ViewController.swift
//  RSKICTest
//
//  Created by kztskawamu on 2015/11/06.
//  Copyright © 2015年 cazcawa. All rights reserved.
//

import UIKit
import RSKImageCropper

class ViewController: UIViewController, RSKImageCropViewControllerDelegate/*, RSKImageCropViewControllerDataSource*/ {
    
    @IBOutlet var imageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        let image = UIImage(named: "lowpolyApple.png")!
//        let imageCropVC: RSKImageCropViewController = RSKImageCropViewController(image: image, cropMode: RSKImageCropMode.Square)
//        imageCropVC.delegate = self
////        imageCropVC.dataSource = self
//        self.navigationController?.pushViewController(imageCropVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func action() {
        let image = UIImage(named: "lowpolyApple.png")!
        let imageCropVC: RSKImageCropViewController = RSKImageCropViewController(image: image, cropMode: RSKImageCropMode.Circle)
        imageCropVC.delegate = self
        //        imageCropVC.dataSource = self
//        self.presentViewController(imageCropVC, animated: true, completion: nil)
        self.navigationController?.pushViewController(imageCropVC, animated: true)
        
    }
    
    func imageCropViewControllerDidCancelCrop(controller: RSKImageCropViewController!) {
//        self.dismissViewControllerAnimated(true, completion: nil)
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    func imageCropViewController(controller: RSKImageCropViewController!, willCropImage originalImage: UIImage!) {
        
    }
    
    func imageCropViewController(controller: RSKImageCropViewController!, didCropImage croppedImage: UIImage!, usingCropRect cropRect: CGRect) {
        imageView.image = croppedImage
        //        self.dismissViewControllerAnimated(true, completion: nil)
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    


}

