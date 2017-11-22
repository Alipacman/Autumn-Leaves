//
//  RotateShooters.swift
//  FlyingLines
//
//  Created by Ali Ebrahimi Pourasad on 22.11.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

extension ViewController {

    
    func rotateShooters(fingerposition : CGPoint) {
//        choseShooter(shooter: U1, fingerposition: fingerposition)
//        choseShooter(shooter: U2, fingerposition: fingerposition)
//        choseShooter(shooter: U3, fingerposition: fingerposition)
//        choseShooter(shooter: U4, fingerposition: fingerposition)
//        choseShooter(shooter: U5, fingerposition: fingerposition)
//        choseShooter(shooter: U6, fingerposition: fingerposition)
//        choseShooter(shooter: U7, fingerposition: fingerposition)
//        choseShooter(shooter: U8, fingerposition: fingerposition)
//        choseShooter(shooter: U9, fingerposition: fingerposition)
//        choseShooter(shooter: U10, fingerposition: fingerposition)
//        choseShooter(shooter: U11, fingerposition: fingerposition)
//        choseShooter(shooter: U12, fingerposition: fingerposition)
        

    }

    
    func choseShooter (shooter : UIView, fingerposition : CGPoint) {
        UIView.animate(withDuration: 0.1, delay: 0, options: .curveLinear, animations: { () -> Void in
            shooter.transform = CGAffineTransform(rotationAngle: CGFloat(self.giveAngle(tragetView: shooter, touchedPoint: fingerposition)))
        }) { (finished) -> Void in
            print("\(shooter)")
        }
    }
}

