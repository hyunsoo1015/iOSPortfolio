import UIKit

class RootViewController: UITableViewController {
    
    //테이블 뷰에 출력할 제목과 하위 제목 배열을 생성
    var titles = Array<String>()
    var subtitles = Array<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "서버 연동 & 로컬 저장"
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        var cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        }

        cell!.textLabel!.text = titles[indexPath.row]
        cell!.detailTextLabel!.text = subtitles[indexPath.row]
        cell!.accessoryType = .disclosureIndicator

        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
