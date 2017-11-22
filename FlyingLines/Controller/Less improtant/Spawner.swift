//
//  Spawner.swift
//  FlyingLines
//
//  Created by Ali Ebrahimi Pourasad on 21.11.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import Foundation
import UIKit
import RandomColorSwift



extension ViewController{
    
    
    func createline() -> UIView {
        counter += 1
        let line = createLineContainer()
        view.addSubview(line)
        setupConstrains(uiview: line)
        line.fadeOut(duration: 2.0, delay: TimeInterval(randomBetweenNumbers(firstNum: CGFloat(stayduration - 1.0), secondNum: CGFloat(stayduration + 1.0)))) { (true) in
            self.counter -= 1
        }
        
        return line
    }
    
    func createLineContainer() ->UIView {
        let view = UIView()
        view.backgroundColor = randomColors(count: 1, hue: .pink, luminosity: .dark)[0]
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    func setupConstrains(uiview : UIView){
        let prototype = randomPrototype()
        uiview.topAnchor.constraint(equalTo: prototype.topAnchor).isActive = true
        uiview.bottomAnchor.constraint(equalTo: prototype.bottomAnchor).isActive = true
        uiview.leftAnchor.constraint(equalTo: prototype.leftAnchor).isActive = true
        uiview.rightAnchor.constraint(equalTo: prototype.rightAnchor).isActive = true
    }
    
//    func beginTurn (uiview: UIView, GCPoint :CGPoint) {
//        UIView.animateWithDuration(0.0, delay: 0, options: .CurveLinear, animations: { () -> Void in
//            uiview.transform = CGAffineTransformRotate(self.view.transform, GCPoint)
//        }) { (finished) -> Void in
//            if(touched){
//                //            self.beginTurn()
//            }
//        }
//    }
    
        func randomPrototype() -> UIView{
            var Uiview = U12
            switch randRange(lower: 0, upper: 46) {
            case 0:
                Uiview = U1
            case 1:
                Uiview = U2
            case 2:
                Uiview = U3
            case 3:
                Uiview = U4
            case 4:
                Uiview = U5
            case 5:
                Uiview = U6
            case 6:
                Uiview = U7
            case 7:
                Uiview = U8
            case 8:
                Uiview = U9
            case 9:
                Uiview = U10
            case 10:
                Uiview = U11
            case 11:
                Uiview = U12
            case 12:
                Uiview = L1
            case 13:
                Uiview = L2
            case 14:
                Uiview = L3
            case 15:
                Uiview = L4
            case 16:
                Uiview = L5
            case 17:
                Uiview = L6
            case 18:
                Uiview = L7
            case 19:
                Uiview = L8
            case 20:
                Uiview = L9
            case 21:
                Uiview = L10
            case 22:
                Uiview = L11
            case 23:
                Uiview = L12
            case 24:
                Uiview = R1
            case 25:
                Uiview = R2
            case 26:
                Uiview = R3
            case 27:
                Uiview = R4
            case 28:
                Uiview = R5
            case 29:
                Uiview = R6
            case 30:
                Uiview = R7
            case 31:
                Uiview = R8
            case 32:
                Uiview = R9
            case 33:
                Uiview = R10
            case 34:
                Uiview = R11
            case 35:
                Uiview = R12
            case 36:
                Uiview = D1
            case 37:
                Uiview = D2
            case 38:
                Uiview = D3
            case 39:
                Uiview = D4
            case 40:
                Uiview = D5
            case 41:
                Uiview = D6
            case 42:
                Uiview = D7
            case 43:
                Uiview = D8
            case 44:
                Uiview = D9
            case 45:
                Uiview = D10
            case 46:
                Uiview = D11
            case 47:
                Uiview = D12
            default:
                break
            }
            
            return Uiview!
        }
        
}
