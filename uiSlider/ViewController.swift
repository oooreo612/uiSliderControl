//
//  ViewController.swift
//  uiSlider
//
//  Created by 柯昭全 on 2022/10/28.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var alphaSwitch: UISwitch!
   @IBOutlet weak var grendenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var raderButton: UIButton!
    @IBOutlet weak var backimageview: UIImageView!
    @IBOutlet weak var redSlidercontrol: UISlider!
    @IBOutlet weak var greenSliderControl: UISlider!
    @IBOutlet weak var blueSliderControl: UISlider!
    @IBOutlet weak var alphaSliderControl: UISlider!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var circleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
  
    
    
    
    @IBAction func sliderChangeColor(_ sender: Any) {
        backimageview.backgroundColor = UIColor(red: CGFloat(redSlidercontrol.value), green: CGFloat(greenSliderControl.value), blue: CGFloat(blueSliderControl.value), alpha: CGFloat(alphaSliderControl.value))
            colorchange()
    }
    
    
    func colorchange(){
        redLabel.text = String(format: "%.2f", redSlidercontrol.value)
        greenLabel.text = String(format: "%.2f", greenSliderControl.value)
        blueLabel.text = String(format: "%.2f", blueSliderControl.value)
        alphaLabel.text = String(format: "%.2f", alphaSliderControl.value)
        
        
    }
    
    func randerNumber(){
        let r = Float.random(in: 0...1)
        let g = Float.random(in: 0...1)
        let b = Float.random(in: 0...1)
        let a = Float.random(in: 0...1)
        redSlidercontrol.value = r
        greenSliderControl.value = g
        blueSliderControl.value = b
        alphaSliderControl.value = a
   }
    
    
    @IBAction func switchRGBchange(_ sender: Any) {
        if grendenSwitch.isOn{
            if redSwitch.isOn && greenSwitch.isOn && blueSwitch.isOn && alphaSwitch.isOn {
                raderButton.isEnabled = true
            }
        }else if greenSwitch.isEnabled{
           raderButton.isEnabled = false
       }
        
    }
    
   
    @IBAction func buttonRGBchange(_ sender: Any) {
        if greenSwitch.isOn{
            if redSwitch.isOn && greenSwitch.isOn && blueSwitch.isOn && alphaSwitch.isOn{
                randerNumber()
                colorchange()
                backimageview.backgroundColor = UIColor(red: CGFloat(redSlidercontrol.value), green: CGFloat(greenSliderControl.value), blue: CGFloat(blueSliderControl.value), alpha: CGFloat(alphaSliderControl.value))
            }else{
                if redSwitch.isOn || greenSwitch.isOn || blueSwitch.isOn || alphaSwitch.isOn{
                    raderButton.isEnabled = false
                }
            }
        }
   }
    
    
    @IBAction func swichONOFFcontrol(_ sender: Any) {
        if redSwitch.isOn{
            redSlidercontrol.isEnabled = true
            redSlidercontrol.alpha = 1
        }else{
            redSlidercontrol.isEnabled = false
            redSlidercontrol.alpha = 0.2
        }
        
        if greenSwitch.isOn{
            greenSliderControl.isEnabled = true
            greenSliderControl.alpha = 1
        }else{
            greenSliderControl.isEnabled = false
            greenSliderControl.alpha = 0.2
        }
        
        if blueSwitch.isOn{
            blueSliderControl.isEnabled = true
            blueSliderControl.alpha = 1
        }else{
            blueSliderControl.isEnabled = false
            blueSliderControl.alpha = 0.2
        }
        
        if alphaSwitch.isOn{
            alphaSliderControl.isEnabled = true
            alphaSliderControl.alpha = 1
        }else{
            alphaSliderControl.isEnabled = false
            alphaSliderControl.alpha = 0.2
        }
  }
    

}

