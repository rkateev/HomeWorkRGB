//
//  ViewController.swift
//  HomeWorkRGB
//
//  Created by  Husein on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var coloredView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redValue.text = "0.00"
        greenValue.text = "0.00"
        blueValue.text = "0.00"
        
    }


}

