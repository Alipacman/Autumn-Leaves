//
//  TouchController.swift
//  FlyingLines
//
//  Created by Ali Ebrahimi Pourasad on 22.11.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import Foundation
import SpriteKit

extension ViewController {

    override open func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        startAni()
        if (touch!.tapCount == 1){
            firstTouch = false
        }
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touchLocation2 = touches.first?.location(in: self.view)
        moveAnimation(line: ArrayViews[Int(randRange(lower: 0, upper: UInt32(ArrayViews.count))) ], fingerPosition: touchLocation2!)
    }
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Stop node from moving to touch
        touched = false
    }
    
    
    
    
    
    
    //Random int& float
    
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }
    
    
    func randRange (lower: UInt32 , upper: UInt32) -> UInt32 {
        return lower + arc4random_uniform(upper - lower + 1)
    }

}
