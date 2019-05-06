

import UIKit

class ViewController3: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
   
    @IBOutlet weak var whenPlaying: UIDatePicker!
    @IBOutlet weak var wheretext: UITextField!
    @IBOutlet weak var whatSportPick: UIPickerView!
    var sports = ["Basketball","Football","Baseball","Hockey","Volleyball","Spikeball"]
    var whatSport = ""
    var wherePlay = ""
    var when = ""
   
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
        
        let datePicker: UIDatePicker = UIDatePicker()
        
        // Posiiton date picket within a view
        datePicker.frame = CGRect(x: 10, y: 50, width: self.view.frame.width, height: 200)
        
        // Set some of UIDatePicker properties
        datePicker.timeZone = NSTimeZone.local
        datePicker.backgroundColor = UIColor.white
        
        // Add an event to call onDidChangeDate function when value is changed.
        datePicker.addTarget(self, action: #selector(ViewController3.datePickerValueChanged(_:)), for: .valueChanged)
        
        // Add DataPicker to the view
        self.view.addSubview(datePicker)
        
    }
    
    
    @objc func datePickerValueChanged(_ sender: UIDatePicker){
        
        // Create date formatter
        let dateFormatter: DateFormatter = DateFormatter()
        
        // Set date format
        dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a"
        
        // Apply date format
        let selectedDate: String = dateFormatter.string(from: sender.date)
        
        print("Selected value \(selectedDate)")
        
        

    }
    @IBAction func startGameButton(_ sender: Any) {
   wheretext.text = wherePlay
        performSegue(withIdentifier: "Segue1", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
     {
    let word = wheretext.text
    let nvc = segue.destination as! ViewController2
    nvc. = word!
    
    }
}
