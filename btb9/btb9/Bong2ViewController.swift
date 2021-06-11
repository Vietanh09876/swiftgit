//
//  Bong2ViewController.swift
//  btb9
//
//  Created by Nguyễn Việt Anh on 09/06/2021.
//

import UIKit

class Bong2ViewController: UIViewController {

    //tạo quả bóng
    let ballview: UIView =  {
        let viewb = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        //biến view đc sử dụng cục bộ trong scope (phạm vi) khởi tạo của ballview, nó ko phải là superview
        viewb.backgroundColor = .systemTeal
        viewb.layer.cornerRadius = 25
        return viewb
    }()
    
    var time: Timer!
    var cao: CGFloat = 0
    var y: CGFloat = 0
    var d: CGFloat = 0
    var v: CGFloat = 0
    var a: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //thêm ballview vào superview
        self.view.addSubview(ballview)
        
        d = ballview.bounds.width
        
        ballview.center = CGPoint(x: self.view.bounds.width/2, y: 100)
        
        cao = view.bounds.height
        
        time = Timer.scheduledTimer(timeInterval: 0.02, target: self, selector: #selector(loop), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func loop() {
        v = v + a
        y = y + v
        if y > cao - 3/4 * d {
            y = cao - 3/4 * d
            v = -v * 0.8
        }
        ballview.center.y = y
        print(v)
    }

}
