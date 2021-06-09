import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var reset: UIButton!
    
    var clock: Timer!
    var giay = 0
    var state: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        state = false
        
        
    }
    
    
    @IBAction func pressstart(_ sender: Any) {
        if state == false {
            clock = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(loop), userInfo: nil, repeats: true)
            state = true
            start.setTitle("Pause", for: .normal)
        } else {
            state = false
            start.setTitle("Start", for: .normal)
            clock.invalidate()
        }
        
    }
    
    @IBAction func pressreset(_ sender: Any) {
        state = false
        start.setTitle("Start", for: .normal)
        clock.invalidate()
        giay = 0
        time.text = "00:00:00"
        
    }
    
    @objc func loop() {
        giay += 1
        time.text = tinhtime(giay)
    }
    func tinhtime(_ giays: Int) -> String  {
        let gio = giays/3600
        let phut = (giays%3600)/60
        let giayd = ((giays%3600)%60)%60
        return "\(gio < 10 ? "0\(gio)" : "\(gio)"):\(phut < 10 ? "0\(phut)" : "\(phut)"):\(giayd < 10 ? "0\(giayd)" : "\(giayd)")"
    }
}

