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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
        greenColorView.layer.cornerRadius = 50
        yellowColorView.layer.cornerRadius = 50
        redColorView.layer.cornerRadius = 50
    }


}

