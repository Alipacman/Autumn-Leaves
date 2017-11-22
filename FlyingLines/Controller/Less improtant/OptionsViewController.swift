//
//  OptionsViewController.swift
//  FlyingLines
//
//  Created by Ali Ebrahimi Pourasad on 22.11.17.
//  Copyright © 2017 Ali Ebrahimi Pourasad. All rights reserved.
//

import UIKit

class OptionsViewController: UIViewController {

    @IBOutlet weak var LeafSizeSlider: UISlider!
    @IBOutlet weak var LeafSizeLabel: UILabel!
    
    @IBOutlet weak var StayDurationSlider: UISlider!
    @IBOutlet weak var StayDurationLabel: UILabel!
    
    @IBOutlet weak var FallinSpeedSlider: UISlider!
    @IBOutlet weak var FallinSpeedLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func giveLeafSize() -> Double {
        return (Double(LeafSizeSlider.value))
    }
    
    func giveStayDuration() -> Double {
        return (Double(StayDurationSlider.value))
    }
    func giveFallin() -> Float {
        return (FallinSpeedSlider.value)
    }


}
