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
        line.layer.cornerRadius = 12
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
        uiview.topAnchor.constraintEqualToSystemSpacingBelow(prototype.topAnchor, multiplier: (randomBetweenNumbers(firstNum: CGFloat(leafSize - 1.0), secondNum: CGFloat(leafSize + 1.0)))).isActive = true
        uiview.bottomAnchor.constraintEqualToSystemSpacingBelow(prototype.bottomAnchor, multiplier: (randomBetweenNumbers(firstNum: CGFloat(leafSize - 1.0), secondNum: CGFloat(leafSize - 1.0)))).isActive = true
        uiview.leftAnchor.constraintEqualToSystemSpacingAfter(prototype.leftAnchor, multiplier: (randomBetweenNumbers(firstNum: CGFloat(leafSize - 1.0), secondNum: CGFloat(leafSize - 1.0)))).isActive = true
        uiview.rightAnchor.constraintEqualToSystemSpacingAfter(prototype.rightAnchor, multiplier: (randomBetweenNumbers(firstNum: CGFloat(leafSize - 1.0), secondNum: CGFloat(leafSize - 1.0)))).isActive = true
        
//        uiview.bottomAnchor.constraint(equalTo: prototypeView.bottomAnchor).isActive = true
//        uiview.leftAnchor.constraint(equalTo: prototypeView.leftAnchor).isActive = true
//        uiview.rightAnchor.constraint(equalTo: prototypeView.rightAnchor).isActive = true
    }
    
    
    func randomPrototype() -> UIView{
        var Uiview = prototypeVIewLeft
        switch randRange(lower: 0, upper: 4) {
        case 0:
            Uiview = prototypeView
        case 1:
            Uiview = prototypeView0
        case 2:
            Uiview = prototypeVIewLeft
        case 3:
            Uiview = prototypekp
        case 4:
            Uiview = prototypekp2
        case 5:
            Uiview = prototypekp3
        default:
            break
        }
        
        return Uiview!
    }
    
}
