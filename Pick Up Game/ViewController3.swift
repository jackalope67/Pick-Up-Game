//
//  ViewController3.swift
//  Pick Up Game
//
//  Created by JACK FLYNN on 4/26/19.
//  Copyright © 2019 clc.Flynn. All rights reserved.
//

import UIKit

class ViewController3: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    @IBOutlet weak var whenPlaying: UIDatePicker!
    @IBOutlet weak var wheretext: UITextField!
    @IBOutlet weak var whatSportPick: UIPickerView!
    var sports = ["Basketball","Football","Baseball","Hockey","Volleyball","Spikeball"]
    var whatSport = ""
    var wherePlay = ""
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sports[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       return sports.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        whatSport = sports[row]
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        
        

    }
    @IBAction func startGameButton(_ sender: Any) {
   wheretext.text = wherePlay
    
    }
    

    
}
