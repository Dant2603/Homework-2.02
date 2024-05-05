//
//  ViewController.swift
//  Homework 2.02
//
//  Created by Мария Гетманская on 05.05.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightLabel: UIView!
    @IBOutlet var yellowLightLabel: UIView!
    @IBOutlet var greenLightLabel: UIView!
    
    @IBOutlet var lightSwitchButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightLabel.layer.cornerRadius = 50
        yellowLightLabel.layer.cornerRadius = 50
        greenLightLabel.layer.cornerRadius = 50
        redLightLabel.alpha = 0.3
        yellowLightLabel.alpha = 0.3
        greenLightLabel.alpha = 0.3
        lightSwitchButton.layer.cornerRadius = 10
        lightSwitchButton.setTitle("START", for: .normal)
    }
    
    @IBAction func lightSwitchButtonDidTapped() {
        switch lightSwitchButton.currentTitle {
        case "START":
            redLightLabel.alpha = 1.0
            lightSwitchButton.setTitle("NEXT", for: .normal)
        case "NEXT":
            if redLightLabel.alpha == 1.0 {
                redLightLabel.alpha = 0.3
                yellowLightLabel.alpha = 1.0
            } else if yellowLightLabel.alpha == 1.0 {
                yellowLightLabel.alpha = 0.3
                greenLightLabel.alpha = 1.0
            } else if greenLightLabel.alpha == 1.0 {
                greenLightLabel.alpha = 0.3
                redLightLabel.alpha = 1.0
            }
        default:
            break
        }
    }
}

