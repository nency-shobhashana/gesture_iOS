//
//  ViewController.swift
//  Gesture Demo
//
//  Created by Nency on 2021-01-19.
//  Copyright © 2021 Nency. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.up
        view.addGestureRecognizer(swipeUp)
        
    }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer) {
        let swipeGesture = gesture as UISwipeGestureRecognizer
        switch swipeGesture.direction {
        case UISwipeGestureRecognizer.Direction.left:
            print("swipe left is recognized")
        case UISwipeGestureRecognizer.Direction.right:
            print("swipe right is recognized")
        case UISwipeGestureRecognizer.Direction.up:
            print("swipe up is recognized")
        case UISwipeGestureRecognizer.Direction.down:
            print("swipe down is recognized")
        default:
            break
        }
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake {
            print("The phone is shaking")
        }
    }
    
}

