

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sodien: UITextField!
    @IBOutlet weak var tinh: UIButton!
    @IBOutlet weak var ketqua: UILabel!
    @IBOutlet weak var giadien: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        giadien.image = UIImage(named: "dien")
        giadien.bounds.size = CGSize(width: giadien.bounds.width+100, height: giadien.bounds.height+100)
        giadien.center = CGPoint(x: view.center.x, y: view.center.y-50)
        ketqua.textAlignment = .center
        ketqua.center = CGPoint(x: tinh.center.x, y: tinh.center.y+30)
        tinh.setTitle("Tính giá điện", for: .normal)
        ketqua.text = ""
        sodien.placeholder = "Điền số điện (kWh)"
    }
    

    @IBAction func press(_ sender: Any) {
        guard let x = sodien.text, let x1 = Double(x) else {
            ketqua.text = "Số kWh không hợp lệ"
            return
        }

        var tien: Double = 0
        if 0 < x1 && x1 <= 50 {
            tien = (x1 * 1678)
            ketqua.text = "Số tiền phải trả: \(tien)đ"
        }
        else if  x1 > 50 && x1 <= 100 {
            tien = (1678*50 + ((x1-50) * 1734))
            ketqua.text = "Số tiền phải trả: \(tien)đ"
        }
        else if x1 > 100 && x1 <= 200 {
            tien = (1678*50 + (50 * 1734) + ((x1-100) * 2014))
            ketqua.text = "Số tiền phải trả: \(tien)đ"
        }
        else if x1 > 200 && x1 <= 300 {
            tien = (1.678*50 + 50*1.734 + 100*2.014 + ((x1 - 200)*2.536))
            ketqua.text = "Số tiền phải trả: \(tien*1000)đ"
        }
        else if x1 > 300 && x1 <= 400 {
            tien = (1.678*50 + 50*1.734 + 100*2.014 + 100*2.536 + ((x1 - 300)*2.834))
            ketqua.text = "Số tiền phải trả: \(tien*1000)đ"
        }
        else if x1 > 400 {
            tien = (1.678*50 + 50*1.734 + 100*2.014 + 100*2.536 + 100*2.834 + ((x1 - 400)*2.927))
            ketqua.text = "Số tiền phải trả: \(tien*1000)đ"
        }
        else {
            ketqua.text = "Số kWh không Hợp lệ"
        }
    }
}

