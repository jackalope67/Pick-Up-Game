import UIKit
var Games = ["Fake Game"]


class ViewController2: UIViewController {
    var Nickname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        var retrieve = UserDefaults.standard

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Games.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "White")!
        cell.textLabel?.text = Games[indexPath.row]
        return cell
    }
}
