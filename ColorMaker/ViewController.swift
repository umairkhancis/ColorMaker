//
//  ViewController.swift
//  ColorMaker
//
//  Created by UmairAhmed Khan on 27/03/2020.
//  Copyright © 2020 noorifytech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var redColorSlider: UISlider!
    @IBOutlet private var greenColorSlider: UISlider!
    @IBOutlet private var blueColorSlider: UISlider!
    @IBOutlet private var colorView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.colorView.backgroundColor = getUIColor(redSlider: redColorSlider, greenSlider: greenColorSlider, blueSlider: blueColorSlider)
    }
    
    
    @IBAction private func onValueChange() {
        self.colorView.backgroundColor = getUIColor(redSlider: redColorSlider, greenSlider: greenColorSlider, blueSlider: blueColorSlider)
    }
    
    private func getUIColor(redSlider: UISlider, greenSlider: UISlider, blueSlider: UISlider) -> UIColor {
        
        let r: CGFloat = CGFloat(redColorSlider.value)
        let g: CGFloat = CGFloat(greenColorSlider.value)
        let b: CGFloat = CGFloat(blueColorSlider.value)
        
        return UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}

