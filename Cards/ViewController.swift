//
//  ViewController.swift
//  Cards
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topLeftLabel: UILabel!
    
    @IBOutlet weak var centerLabel: UILabel!
    
    @IBOutlet weak var bottomRightLabel: UILabel!
    
    @IBOutlet weak var fourClubButton: UIButton!
    
    @IBOutlet weak var threeSpadeButton: UIButton!
    
    @IBOutlet weak var eightDiamondButton: UIButton!
    
    @IBOutlet weak var tenHeartButton: UIButton!
    
    // TODO: Create IB outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabels(valueMiddle: "?", suitsCorners: "?")
    }
    
    
    
    // TODO: IB actions and code to update UI
    func updateLabels(valueMiddle: String, suitsCorners: String) {
        
        centerLabel.text = valueMiddle
        topLeftLabel.text = suitsCorners
        bottomRightLabel.text = suitsCorners
    }

    
    @IBAction func cardButtonPressed(_ sender: UIButton) {
        
        switch sender {
        case fourClubButton:
            updateLabels(valueMiddle: "4", suitsCorners: "♣️")
        case threeSpadeButton:
            updateLabels(valueMiddle: "3", suitsCorners: "♠️")
        case eightDiamondButton:
            updateLabels(valueMiddle: "8", suitsCorners:  "♦️")
        case tenHeartButton:
            updateLabels(valueMiddle: "10", suitsCorners: "♥️")
        default:
            updateLabels(valueMiddle: "?", suitsCorners: "?")
        }
    }
    
  

}
