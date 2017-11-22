//
//  ViewController.swift
//  FlyingLines
//
//  Created by Ali Ebrahimi Pourasad on 21.11.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import UIKit
import SpriteKit

extension UIView {
    
    
    func fadeIn(duration: TimeInterval = 1.0, delay: TimeInterval = 0.5, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            
            self.alpha = 1.0
        }, completion: completion)  }
    
    func fadeOut(duration: TimeInterval = 1.0, delay: TimeInterval = 0.1, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
    
}



class ViewController: UIViewController {
    
    @IBOutlet weak var prototypeView: UIView!
    
    @IBOutlet weak var prototypeView0: UIView!
    @IBOutlet weak var startLabel: UILabel!
    
    @IBOutlet weak var prototypeVIewLeft: UIView!
    
    
    var counter = 0
    var firstTouch = true
    var touched = false
    var stayduration = 1.5
    var fallingSpeed = 1.0
    var leafSize = 1.2
    
    var optionsShown = false
    
    
    
    
    var option = OptionsViewController()
    
    @IBOutlet weak var prototypekp3: UIView!
    @IBOutlet weak var prototypekp2: UIView!
    @IBOutlet weak var prototypekp: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        prototypeView.isHidden = true
    }
    
    
    func startAni(){
        if firstTouch{
            startLabel.fadeOut()
            prototypeView.fadeIn()
        }
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
    }
}
