//
//  ChoiceBeckroundViewController.swift
//  BalynskySA_HW2.6
//
//  Created by Macbook on 05.06.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

protocol NewBeckGraundDelegate {
    func colorSet(redColor: CGFloat, green: CGFloat, blueColor: CGFloat)
   
}

class ChoiceBeckGroundViewController: UIViewController {
    
   
    

    @IBOutlet weak var rgbView: UIView!
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var redSet: Float = 0
    var greenSet: Float = 0
    var blueSet: Float = 0
    
    var delegate: NewBeckGraundDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redSlider.value = redSet
        greenSlider.value = greenSet
        blueSlider.value = blueSet
        
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f", greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        rgbView.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value),
                                               green: CGFloat(greenSlider.value),
                                               blue: CGFloat(blueSlider.value),
                                               alpha: 1)
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
        

    }
    
    @IBAction func sliderAction() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        greenValueLabel.text = String(format: "%.2f",   greenSlider.value)
        blueValueLabel.text = String(format: "%.2f", blueSlider.value)
        
        
        rgbView.backgroundColor = .init(displayP3Red: CGFloat(redSlider.value),
                                        green: CGFloat(greenSlider.value),
                                        blue: CGFloat(blueSlider.value),
                                        alpha: 1)
    }
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        delegate.colorSet(redColor: CGFloat(redSlider.value),
                          green: CGFloat(greenSlider.value),
                          blueColor: CGFloat(blueSlider.value))
        dismiss(animated: true)
    }
}

