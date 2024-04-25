//
//  ViewController.swift
//  Homework 2.02
//
//  Created by Анастасия Козлова on 23.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var greenColorView: UIView!
    @IBOutlet var yellowColorView: UIView!
    @IBOutlet var redColorView: UIView!
    @IBOutlet var startButton: UIButton!
    
    var currentLightIndex = 0
    var isLightOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        greenColorView.layer.cornerRadius = 50
        yellowColorView.layer.cornerRadius = 50
        redColorView.layer.cornerRadius = 50
        
        greenColorView.alpha = 0.3
        yellowColorView.alpha = 0.3
        redColorView.alpha = 0.3
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        if !isLightOn {
            sender.setTitle("NEXT", for: .normal)
            isLightOn = true
        }
        changeLight()
    }
    
    func changeLight() {
        switch currentLightIndex {
        case 0:
            redColorView.alpha = 1
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 0.3
        case 1:
            redColorView.alpha = 0.3
            yellowColorView.alpha = 1
            greenColorView.alpha = 0.3
        case 2:
            redColorView.alpha = 0.3
            yellowColorView.alpha = 0.3
            greenColorView.alpha = 1
        default:
            break
        }
        currentLightIndex = (currentLightIndex + 1) % 3
    }
}
