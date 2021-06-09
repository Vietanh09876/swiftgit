
import UIKit

class BongnayViewController: UIViewController {

    @IBOutlet weak var bong: UIView!
    @IBOutlet weak var tha: UIButton!
    var time: Timer!
    var ok: CGFloat = 0
    var count = 5
    var lannay: CGFloat = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bong.frame.size = CGSize(width: 100, height: 100)
        bong.center = view.center
        bong.frame.origin = CGPoint(x: bong.frame.origin.x, y: bong.frame.origin.y-200)
        bong.layer.cornerRadius = bong.frame.height/2
        tha.frame.size = CGSize(width: tha.frame.height+20, height: tha.frame.height)
        tha.setTitle("Thả", for: .normal)
        lannay = CGFloat(count)
        ok = (self.view.center.y - self.bong.frame.height)/lannay
    }
    
    @IBAction func drop(_ sender: Any) {
        time = Timer.scheduledTimer(timeInterval: 3.5, target: self, selector: #selector(nay), userInfo: nil, repeats: true)
    }


    @objc func nay() {
        if count != 1 {
            count -= 1
            
            UIView.animate(withDuration: 1.5) {
                self.bong.frame.origin.y = self.view.frame.height - self.bong.frame.height
            } completion: { _ in
                UIView.animate(withDuration: 2) {
                    self.bong.frame.origin.y = self.view.center.y + self.ok
                }
            }
            ok += (self.view.center.y - self.bong.frame.height)/lannay
        } else {
            time.invalidate()
        }
    }
}

