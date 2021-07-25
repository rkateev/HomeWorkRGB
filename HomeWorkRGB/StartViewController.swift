//
//  StartViewController.swift
//  HomeWorkRGB
//
//  Created by  Husein on 23.07.2021.
//

import UIKit

protocol EditViewControllerDelegate {
    func setNewColor(_ color: UIColor)
}

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let editVC = segue.destination as? EditViewController else { return }
        editVC.startColor = view.backgroundColor
        editVC.delegate = self
    }
  
}

extension StartViewController: EditViewControllerDelegate {
    func setNewColor(_ color: UIColor) {
        view.backgroundColor = color
    }
    
}
