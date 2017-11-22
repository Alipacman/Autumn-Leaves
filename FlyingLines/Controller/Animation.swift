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
    
    generateLines()
    let height = line.frame.height
    let width = line.frame.width
    
    UIView.animate(withDuration: fallingSpeed, delay: 0.3, options: [.curveEaseIn] , animations: {
        line.frame = CGRect(x: fingerPosition.x, y: fingerPosition.y , width: height, height: width)
    }, completion:{ _ in
        if(self.counter < 1000 && self.touched){
            self.moveAnimation (line : self.ArrayViews[Int(self.randRange(lower: 0, upper: 1000)) ], fingerPosition : fingerPosition)
        }
    })
}

}
