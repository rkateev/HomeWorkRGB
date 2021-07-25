//
//  ViewController.swift
//  HomeWorkRGB
//
//  Created by  Husein on 09.07.2021.
//

import UIKit

class EditViewController: UIViewController {
    @IBOutlet weak var coloredView: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    var startColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        coloredView.backgroundColor = startColor
        
        redSlider.value = Float(readColors()[0])
        greenSlider.value = Float(readColors()[1])
        blueSlider.value = Float(readColors()[2])
        
        coloredView.layer.cornerRadius = coloredView.frame.width / 10
        
        redValue.text = String(format: "%0.3f", redSlider.value)
        greenValue.text = String(format: "%0.3f", greenSlider.value)
        blueValue.text = String(format: "%0.3f", blueSlider.value)
        
    }
    @IBAction func redAction() {
        redValue.text = String(format: "%0.3f", roundf(redSlider.value * 1000) / 1000)
        changeColor()
    }
    
    @IBAction func greenAction() {
        greenValue.text = String(format: "%0.3f", roundf(greenSlider.value * 1000) / 1000)
        changeColor()
    }
    
    @IBAction func blueAction() {
        blueValue.text = String(format: "%0.3f", roundf(blueSlider.value * 1000) / 1000)
        changeColor()
    }
    
    
    
    private func changeColor() {
        coloredView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
}

extension EditViewController {
    private func readColors() -> [CGFloat] {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        
        startColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return [red, green, blue]
    }
}
