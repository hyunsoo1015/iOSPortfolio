import UIKit

class CustomCellViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //AppDelegate 클래스의 인스턴스에 대한 참조를 생성
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        return appDelegate.images1.count
    }
    
    //셀을 생성해주는 메소드
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //셀을 수정한 적이 없으면 아무 이름이나 상관없고
        //셀을 수정했으면 셀의 Identifier를 설정해야 한다.
        //이 부분을 틀리면 Identifier 예외가 발생
        //인터페이스 빌더에서 셀을 선택하고 ID를 설정하던가 이 코드를 수정
        let cellIdentifier = "MyCustomCell"
        
        //자신의 셀 클래스로 형 변환
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? MyCustomCell
        
        //데이터 출력
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        cell?.imgView.image = UIImage(named: appDelegate.images1[indexPath.row])
        
        return cell!
    }

}
