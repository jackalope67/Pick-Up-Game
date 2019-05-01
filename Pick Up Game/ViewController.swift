import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Nextpage(_ sender: UIButton) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! ViewController2
        nvc.Nickname = Name

    }
}
