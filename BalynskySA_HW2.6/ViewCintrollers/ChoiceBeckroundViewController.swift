//
//  ChoiceBeckroundViewController.swift
//  BalynskySA_HW2.6
//
//  Created by Macbook on 05.06.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class ChoiceBeckroundViewController: UIViewController {

    @IBOutlet weak var rgbView: UIView!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValueLabel.text = String(format: "%.2f",
                                    redSlider.value)
        greenValueLabel.text = String(format: "%.2f",
                                      greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
    
    @IBAction func sliderAction() {
        redValueLabel.text = String(format: "%.2f",
                                    redSlider.value)
        greenValueLabel.text = String(format: "%.2f",
                                      greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        
        rgbView.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value),
                                        green: CGFloat(greenSlider.value),
                                        blue: CGFloat(blueSlider.value),
                                        alpha: 1)
    }
    
}

