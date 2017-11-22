//
//  Options.swift
//  FlyingLines
//
//  Created by Ali Ebrahimi Pourasad on 21.11.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import Foundation
import UIKit


extension ViewController{


    func rotateVersus(destPoint: CGPoint, uiview :UIView) {
        let v1 = CGVector(dx:0, dy:1)
        let v2 = CGVector(dx:destPoint.x - uiview.frame.origin.x, dy: destPoint.y - uiview.frame.origin.y)
        let angle = atan2(v2.dy, v2.dx) - atan2(v1.dy, v1.dx)
        
        let rotateTransfrom = CGAffineTransform(rotationAngle: angle)
        
        UIView.animate(withDuration: 0.1, delay: 0.2, options: [] , animations: {
            uiview.transform = rotateTransfrom
        }, completion:{ _ in
        })
    }
    
    
}
