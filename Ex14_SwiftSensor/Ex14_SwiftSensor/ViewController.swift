//
//  ViewController.swift
//  Ex14_SwiftSensor
//
//  Created by 6272 on 8/11/2561 BE.
//  Copyright © 2561 6272. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func swipeMethod(_ sender: Any) {
        print("Image was swipe")
    }
    
    @IBAction func handlePanGesture(_ sender: Any) {
        let translation = (sender as AnyObject).translation(in: self.imageView)
        (sender as AnyObject).view?.center = CGPoint(x:((sender as AnyObject).view?.center.x)!+translation.x,y:((sender as AnyObject).view?.center.y)!+translation.y)
        (sender as AnyObject).setTranslation(CGPoint(x:0,y:0), in: self.imageView)
    }
    @IBAction func handlePinch(_ sender: Any) {
        (sender as AnyObject).view?.transform = CGAffineTransform(scaleX: (sender as AnyObject).scale, y: (sender as AnyObject).scale)    }
    @IBAction func handleRotation(_ sender: Any) {
        self.imageView.transform = CGAffineTransform.identity.rotated(by: (sender as AnyObject).rotation)    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var myView: UIView!
    var isRed = false
    @IBAction func handleTap(_ sender: Any) {
        if isRed {
            myView.backgroundColor = UIColor.green
            isRed = false
        } else {
            myView.backgroundColor = UIColor.blue
            isRed = true
        }    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

