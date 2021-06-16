

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var khung: UIView!
    
    @IBOutlet weak var countd: UIView!
    
    @IBOutlet weak var xanh: UIView!
    
    @IBOutlet weak var dendo: UIView!
    
    @IBOutlet weak var vang: UIView!
    
    @IBOutlet weak var down: UILabel!
    
    @IBOutlet weak var stop: UIButton!
    
    @IBOutlet weak var start: UIButton!
    
    var timexanh: Int = 3
    var timevang: Int = 3
    var timedo: Int = 3
    var cdtimex: Int = 0
    var cdtimev: Int = 0
    var cdtimed: Int = 0
    
    var notrunning: Bool = false
    var isgreen: Bool = false
    var isyellow: Bool = false
    
    var time: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        khung.frame.size = CGSize(width: 200, height: 500)
        khung.center = view.center
        khung.frame.size.height += 50
        khung.backgroundColor = .black
        khung.layer.cornerRadius = 20
        
        countd.frame.size = CGSize(width: 100, height: 100)
        countd.center = CGPoint(x: khung.center.x, y: khung.center.y - 175)
        countd.backgroundColor = .gray
        countd.layer.cornerRadius = 50
        
        down.center = countd.center
        down.textAlignment = .center
        down.font = UIFont.boldSystemFont(ofSize: 50)
        down.textColor = .white
        down.text = "00"
        
        xanh.frame.size = CGSize(width: 100, height: 100)
        xanh.center = CGPoint(x: khung.center.x, y: countd.center.y + 125)
        xanh.backgroundColor = .lightGray
        xanh.layer.cornerRadius = 50
        
        vang.frame.size = CGSize(width: 100, height: 100)
        vang.center = CGPoint(x: khung.center.x, y: xanh.center.y + 125)
        vang.backgroundColor = .lightGray
        vang.layer.cornerRadius = 50
        
        dendo.frame.size = CGSize(width: 100, height: 100)
        dendo.center = CGPoint(x: khung.center.x, y: vang.center.y + 125)
        dendo.backgroundColor = .lightGray
        dendo.layer.cornerRadius = 50
        
        stop.setTitle("RETURN", for: .normal)
        stop.center = CGPoint(x: khung.center.x, y: khung.center.y - 325)
        stop.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        start.setTitle("START", for: .normal)
        start.center = CGPoint(x: khung.center.x, y: khung.center.y + 325)
        start.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        
        isyellow = true
        isgreen = true
        notrunning = true
        
        cdtimex = timexanh
        cdtimev = timevang
        cdtimed = timedo
    }
    
    @objc func dgttimer() {
        if isgreen {
            dendo.backgroundColor = .lightGray
            xanh.backgroundColor = .green
            if cdtimex > 99 {
                down.text = "99"
            }
            if cdtimex < 99 {
                down.text = String(cdtimex)
            }
            cdtimex -= 1
            down.textColor = .systemGreen
            if cdtimex == -1 {
                cdtimed = timedo
                isgreen = false
            }
        }
        else {
            if isyellow {
                vang.backgroundColor = .yellow
                xanh.backgroundColor = .lightGray
                if cdtimev > 99 {
                    down.text = "99"
                }
                if cdtimev < 99 {
                    down.text = String(cdtimev)
                }
                cdtimev -= 1
                down.textColor = .systemYellow
                if cdtimev == -1 {
                    isyellow = false
                }
            }
            else {
                dendo.backgroundColor = .red
                vang.backgroundColor = .lightGray
                if cdtimed > 99 {
                    down.text = "99"
                }
                if cdtimed < 99 {
                    down.text = String(cdtimed)
                }
                cdtimed -= 1
                down.textColor = .systemRed
                if cdtimed == -1 {
                    cdtimex = timexanh
                    cdtimev = timevang
                    isgreen = true
                    isyellow = true
                }
            }
        }
    }
   
    @IBAction func batdau(_ sender: Any) {
        if notrunning {
            start.setTitle("PAUSE", for: .normal)
            dgttimer()
            time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(dgttimer), userInfo: nil, repeats: true)
            notrunning = false
        }
        else {
            start.setTitle("START", for: .normal)
            notrunning = true
            time.invalidate()
        }
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

