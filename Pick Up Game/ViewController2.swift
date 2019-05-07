import UIKit


class ViewController2: UIViewController {
    var Nickname: UITextField!
    var Games = ["Fake Game"]
    var yes: String!
    var no: String!
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
