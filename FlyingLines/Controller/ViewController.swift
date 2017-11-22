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
    @IBOutlet weak var test: UIView!

    
    @IBOutlet weak var U1: UIView!
    @IBOutlet weak var U2: UIView!
    @IBOutlet weak var U3: UIView!
    @IBOutlet weak var U4: UIView!
    @IBOutlet weak var U5: UIView!
    @IBOutlet weak var U6: UIView!
    @IBOutlet weak var U7: UIView!
    @IBOutlet weak var U8: UIView!
    @IBOutlet weak var U9: UIView!
    @IBOutlet weak var U10: UIView!
    @IBOutlet weak var U11: UIView!
    @IBOutlet weak var U12: UIView!
    
    @IBOutlet weak var R1: UIView!
    @IBOutlet weak var R2: UIView!
    @IBOutlet weak var R3: UIView!
    @IBOutlet weak var R4: UIView!
    @IBOutlet weak var R5: UIView!
    @IBOutlet weak var R6: UIView!
    @IBOutlet weak var R7: UIView!
    @IBOutlet weak var R8: UIView!
    @IBOutlet weak var R9: UIView!
    @IBOutlet weak var R10: UIView!
    @IBOutlet weak var R11: UIView!
    @IBOutlet weak var R12: UIView!
    
    @IBOutlet weak var L1: UIView!
    @IBOutlet weak var L2: UIView!
    @IBOutlet weak var L3: UIView!
    @IBOutlet weak var L4: UIView!
    @IBOutlet weak var L5: UIView!
    @IBOutlet weak var L6: UIView!
    @IBOutlet weak var L7: UIView!
    @IBOutlet weak var L8: UIView!
    @IBOutlet weak var L9: UIView!
    @IBOutlet weak var L10: UIView!
    @IBOutlet weak var L11: UIView!
    @IBOutlet weak var L12: UIView!
    
    @IBOutlet weak var D1: UIView!
    @IBOutlet weak var D2: UIView!
    @IBOutlet weak var D3: UIView!
    @IBOutlet weak var D4: UIView!
    @IBOutlet weak var D5: UIView!
    @IBOutlet weak var D6: UIView!
    @IBOutlet weak var D7: UIView!
    @IBOutlet weak var D8: UIView!
    @IBOutlet weak var D9: UIView!
    @IBOutlet weak var D10: UIView!
    @IBOutlet weak var D11: UIView!
    @IBOutlet weak var D12: UIView!
    
    
    @IBOutlet weak var startLabel: UILabel!
    

    var ArrayViews = [UIView]()
    
    var counter = 0
    var firstTouch = true
    var touched = false
    
    var stayduration = 1.5
    var fallingSpeed = 0.5
    var leafSize = 1.2
    
    
    var option = OptionsViewController()



    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateLines()
    }
    
    func generateLines() {
        while(self.counter < 1000){
          ArrayViews.append(createline())
        }
    }
    
    func startAni(){
        if firstTouch{
            startLabel.fadeOut()
        }
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
    }
}
