//
//  Animation.swift
//  FlyingLines
//
//  Created by Ali Ebrahimi Pourasad on 22.11.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

extension ViewController {
    
func moveAnimation (line : UIView, fingerPosition : CGPoint){
    
    let translateTransform = CGAffineTransform(translationX: fingerPosition.x - 200, y: fingerPosition.y)
    
    UIView.animate(withDuration: fallingSpeed, delay: 0.01, options: [.curveEaseIn] , animations: {
        //            self.rotateVersus(destPoint: fingerPosition, uiview: line)
        line.transform = translateTransform
    }, completion:{ _ in
        if (self.counter < 1000 && self.touched){
            self.moveAnimation(line: self.createline(), fingerPosition: fingerPosition)
            self.moveAnimation(line: self.createline(), fingerPosition: fingerPosition)
            self.moveAnimation(line: self.createline(), fingerPosition: fingerPosition)
        }
    })
}
    
    
    
    
    

}
