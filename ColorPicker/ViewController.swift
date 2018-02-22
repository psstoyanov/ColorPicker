//
//  ViewController.swift
//  ColorPicker
//
//  Created by PakoSt on 2/22/18.
//  Copyright © 2018 PakoSt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redControl: UISlider!
    @IBOutlet weak var greenControl: UISlider!
    @IBOutlet weak var blueControl: UISlider!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set colorView on launch
        changeColorComponent()
    }
    
    // MARK: Actions
    
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        let r: CGFloat = CGFloat(self.redControl.value);
        let g: CGFloat = CGFloat(self.greenControl.value);
        let b: CGFloat = CGFloat(self.blueControl.value);
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

