import UIKit

class RootViewController: UITableViewController {
    
    //테이블에 출력할 데이터 배열
    var titles = Array<String>()
    var contents = Array<String>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "iOS 실습 내용"
        
        titles.append("사용자 정의 셀")
        contents.append("셀을 원하는 모양으로 만들어서 출력")
        
    }

    //섹션의 개수를 설정하는 메소드
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //셀의 구분자를 생성
        let cellIdentifier = "cell"
        //테이블 뷰에서 재사용 가능한 셀을 받아온다.
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        //재사용 가능 셀이 없으면 생성
        //style 을 subtitle 로 설정하면 레이블 2개, 이미지 뷰 1개
        //엑세서리 뷰 1개 모두 사용 가능
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        }
        //레이블에 텍스트를 출력
        cell!.textLabel!.text = titles[indexPath.row]
        cell!.detailTextLabel!.text = contents[indexPath.row]
        //엑세서리 모양을 설정
        cell?.accessoryType = .disclosureIndicator

        return cell!
    }
    
    //셀을 선택했을 때 호출되는 메소드
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let customCellViewController = self.storyboard?.instantiateViewController(withIdentifier: "CustomCellViewController") as! CustomCellViewController
            self.navigationController?.pushViewController(customCellViewController, animated: true)
        }
    }

}
