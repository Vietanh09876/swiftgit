//
//  RandomViewController.swift
//  control
//
//  Created by Nguyễn Việt Anh on 04/06/2021.
//

import UIKit

class RandomViewController: UIViewController {
    let coun = ["AS", "BR", "CP", "VN", "SP", "MA", "ML", "ID", "TL", "Lao1", "DTM", "PL"].shuffled()
    var o: String = ""
    @IBOutlet weak var imgae: UIImageView!
    
    @IBOutlet weak var thay: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        imgae.image = UIImage(named: coun[0])
        thay.setTitle("Random", for: .normal)
        thay.setTitleColor(UIColor.white, for: .normal)
        thay.titleLabel!.font = UIFont.systemFont(ofSize: 28)
        thay.backgroundColor = UIColor.gray
        thay.layer.cornerRadius = 10
    }
    @IBAction func random(_ sender: Any) {
        let count = coun.randomElement()!
        if count == o {
            random(sender)
        } else {
            o = count
            imgae.image = UIImage(named: count)
        }
        
    }
    
}
