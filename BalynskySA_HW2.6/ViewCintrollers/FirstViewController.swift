//
//  FirstViewController.swift
//  BalynskySA_HW2.6
//
//  Created by Macbook on 05.06.2020.
//  Copyright © 2020 Balynsky. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .init(red: 0, green: 0.5, blue: 0.5, alpha: 1)
    }
    
    
    
    // MARK: - Navigation
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? ChoiceBeckGroundViewController else { return }
        destination.delegate = self
        destination.redSet = 0
        destination.greenSet = 0.5
        destination.blueSet = 0.5
      
    }
    
  
    }
extension FirstViewController: NewBeckGraundDelegate {
    func colorSet(redColor red: CGFloat, green: CGFloat, blueColor blue: CGFloat) {
        self.view.backgroundColor = .init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    
  }

