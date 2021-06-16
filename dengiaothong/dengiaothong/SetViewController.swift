
import UIKit

class SetViewController: UIViewController {

    @IBOutlet weak var start: UIButton!
    
    @IBOutlet weak var timexanh: UITextField!
    
    @IBOutlet weak var timevang: UITextField!
    
    @IBOutlet weak var timedo: UITextField!
    
    @IBOutlet weak var mylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timexanh.placeholder = "Thời gian của đèn xanh (giây)"
        timevang.placeholder = "Thời gian của đèn vàng (giây)"
        timedo.placeholder = "Thời gian của đèn đỏ (giây)"
        timexanh.keyboardType = .phonePad
        timevang.keyboardType = .phonePad
        timedo.keyboardType = .phonePad
        
        start.setTitle("START", for: .normal)
        start.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        mylabel.textAlignment = .center
        mylabel.text = ""
        
    }
    
    
    @IBAction func dengt(_ sender: Any) {
        guard let tx = timexanh.text, let td = timedo.text, let tv = timevang.text, let tx1 = Int(tx), let td1 = Int(td), let tv1 = Int(tv) else {
            mylabel.text = "Số giây không hợp lệ"
            return
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let dgt = storyboard.instantiateViewController(identifier: "ViewController" ) as ViewController
        
        dgt.timexanh = tx1
        dgt.timevang = tv1
        dgt.timedo = td1
        
        dgt.modalPresentationStyle = .fullScreen
        self.present(dgt, animated: true, completion: nil)
        }
    }
    
