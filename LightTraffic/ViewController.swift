//
//  ViewController.swift
//  LightTraffic
//
//  Created by Andrew Bondarenko on 27.12.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var changeLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        redLightView.alpha = 0.5
        
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        yellowLightView.alpha = 0.5
        
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        greenLightView.alpha = 0.5
        
        changeLightButton.layer.cornerRadius = 10
    }

    @IBAction func switchLightButton(_ sender: Any) {
        if redLightView.alpha == 0.5 && yellowLightView.alpha == 0.5 {
            greenLightView.alpha = 0.5
            redLightView.alpha = 1
        } else if yellowLightView.alpha == 0.5 && greenLightView.alpha == 0.5 {
            redLightView.alpha = 0.5
            yellowLightView.alpha = 1
        } else if greenLightView.alpha == 0.5 && redLightView.alpha == 0.5 {
            yellowLightView.alpha = 0.5
            greenLightView.alpha = 1
        }
        changeLightButton.setTitle("Next", for: .normal)
    }
    
}

