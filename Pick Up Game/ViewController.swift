import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Warning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        func shouldPerformSegueWithIdentifier(identifier: String, sender: UIButton)->Bool{
            if identifier == "firstsegue" { // you define it in the storyboard (click on the segue, then Attributes' inspector > Identifier
                
                if Name.text?.isEmpty == true {
                    Warning.text="Please Enter a Name"
                    return false
                }

            }
            
            // by default, transition
            return true
        }

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        nvc.Nickname = Name

    }
    
    
    }

