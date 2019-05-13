import UIKit


class ViewController2: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "White")!
        cell.textLabel?.text = yes
        return cell
    }
    
    var Nickname: UITextField!
    var Games = ["Fake Game"]
    var yes: String!
    var no: String!
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Games.count
   
    }

override func viewDidLoad() {
        super.viewDidLoad()
        var retrieve = UserDefaults.standard

  }
}

