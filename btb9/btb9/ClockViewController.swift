

import UIKit

class ClockViewController: UIViewController {

    @IBOutlet weak var clock: UIImageView!
    @IBOutlet weak var kimgio: UIView!
    @IBOutlet weak var kimphut: UIView!
    @IBOutlet weak var kimgiay: UIView!
    @IBOutlet weak var tam: UIView!
    let currenttime = NSDate()
    let calendar = NSCalendar.current
    var time: Timer!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupview()
        runclock()
        
    }
    
    func setupview() {
        clock.image = UIImage(named: "clock")
        clock.center = view.center
        
        view.bringSubviewToFront(tam)
        tam.frame.size = CGSize(width: 20, height: 20)
        tam.center = view.center
        tam.layer.cornerRadius = tam.frame.height/2
        tam.layer.masksToBounds = true
        
        kimgio.frame.size = CGSize(width: clock.bounds.size.width/10 * 1.25, height: 6)
        kimgio.center = view.center
        
        kimphut.frame.size = CGSize(width: clock.bounds.size.width/10 * 1.5, height: 4)
        kimphut.center = view.center
        
        kimgiay.frame.size = CGSize(width: clock.bounds.size.width/10 * 2, height: 2)
        kimgiay.center = view.center
        }
    func anchorpoint(_ kim: UIView,_ point: CGPoint){
        kim.layer.anchorPoint = point
    }
    
    func location(_ kim: UIView,_ alpha: CGFloat) {
        let r = kim.frame.height/2
        kim.layer.cornerRadius = r
        
        anchorpoint(kim, CGPoint(x: 0, y: 0.5))
        kim.transform = CGAffineTransform(rotationAngle: alpha)
        
    }
    
    func runclock() {
        location(kimgio, setclock().gio)
        location(kimphut, setclock().phut)
        location(kimgiay, setclock().giay)
        time = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(loop), userInfo: nil, repeats: true)
    }
    
    func setclock() -> (gio: CGFloat, phut: CGFloat, giay: CGFloat) {
        let hour = calendar.component(.hour, from: currenttime as Date)
        let minute = calendar.component(.minute, from: currenttime as Date)
        let seccond = calendar.component(.second, from: currenttime as Date)
        let hourinaboutseccond = hour*60*60 + minute*60 + seccond
        let minuteinaboutseccond = minute*60 + seccond
        
        let alphahour = CGFloat.pi * (2*CGFloat(hourinaboutseccond)/12/60/60 - 0.5)
        let alphaminute = CGFloat.pi * (2*CGFloat(minuteinaboutseccond)/60/60 - 0.5)
        let alphaseccond = CGFloat.pi * (2*CGFloat(seccond)/60 - 0.5)
        
        return (alphahour, alphaminute, alphaseccond)
    }
    
    @objc func loop() {
        let omegagiay = CGAffineTransform(rotationAngle: CGFloat.pi*2/60)
        let omegaphut = CGAffineTransform(rotationAngle: CGFloat.pi*2/60/60)
        let omegagio = CGAffineTransform(rotationAngle: CGFloat.pi*2/60/60/12)
        
        kimgio.transform = kimgio.transform.concatenating(omegagio)
        kimphut.transform = kimphut.transform.concatenating(omegaphut)
        kimgiay.transform = kimgiay.transform.concatenating(omegagiay)
    }

}
