import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Warning: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Nextpage(_ sender: UIButton) {
        if (Name == nil){
          Warning.text = "Please Enter Your Username"
            
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        nvc.Nickname = Name

    }

    
    }

