import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Warning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        nvc.Nickname = Name

    }
    @IBAction func shouldPerformSegueWithIdentifier(_ sender: UIButton) {
        if !Name.text!.isEmpty
        {
            //Warning.text = "Enter a Name"
            performSegue(withIdentifier: "firstsegue", sender: nil)
        }
        else
        {
            //performSegue(withIdentifier: "firstsegue", sender: nil)
            Warning.text = "Please Write a Name"
        }
    }
    /*func shouldPerformSegueWithIdentifier(identifier: String, sender: UIButton)->Bool{
        if !Name.text!.isEmpty
        {
            Warning.text = "You didn't actually write anything."
            //performSegue(withIdentifier: "firstsegue", sender: sender)
        }
        else
        {
            performSegue(withIdentifier: "firstsegue", sender: sender)
           // Warning.text = "You didn't actually write anything."
        }
 
        
       /* if identifier == "firstsegue" { // you define it in the storyboard (click on the segue, then Attributes' inspector > Identifier
            
            if Name.text?.isEmpty == true {
                Warning.text="Please Enter a Name"
                return false
            }
            else{
                return true
            }
            
        }*/
        
        // by default, transition
        return true
    }*/
    
    
    }

