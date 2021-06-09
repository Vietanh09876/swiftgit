import UIKit

class BongViewController: UIViewController {

    @IBOutlet weak var bong: UIView!
    @IBOutlet weak var tha: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        bong.frame.size = CGSize(width: 100, height: 100)
        bong.center = view.center
        bong.frame.origin = CGPoint(x: bong.frame.origin.x, y: bong.frame.origin.y-200)
        bong.layer.cornerRadius = bong.frame.height/2
        tha.frame.size = CGSize(width: tha.frame.height+20, height: tha.frame.height)
        tha.setTitle("Thả", for: .normal)
        
    }
    
    @IBAction func drop(_ sender: Any) {
        UIView.animate(withDuration: 2) {
            self.bong.frame.origin.y = self.view.frame.height - self.bong.frame.height
        }
    }
}
