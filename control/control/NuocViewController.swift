//
//  NuocViewController.swift
//  control
//
//  Created by Nguyễn Việt Anh on 02/06/2021.
//

import UIKit

class NuocViewController: UIViewController {

    @IBOutlet weak var lab: UILabel!
    @IBOutlet weak var flag: UIImageView!
    @IBOutlet weak var VietNam: UIButton!
    @IBOutlet weak var Lao: UIButton!
    @IBOutlet weak var Thai: UIButton!
    @IBOutlet weak var Myan: UIButton!
    @IBOutlet weak var Camp: UIButton!
    @IBOutlet weak var Malay: UIButton!
    @IBOutlet weak var Singa: UIButton!
    @IBOutlet weak var Indo: UIButton!
    @IBOutlet weak var Brun: UIButton!
    @IBOutlet weak var Phil: UIButton!
    @IBOutlet weak var Timor: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lab.text = "ASEAN"
        lab.textColor = .black
        lab.font = UIFont.systemFont(ofSize: 24)
        flag.image = UIImage(named: "AS")
        VietNam.setTitle("Việt Nam", for: .normal)
        Lao.setTitle("Lào", for: .normal)
        Thai.setTitle("Thái Lan", for: .normal)
        Myan.setTitle("Myanmar", for: .normal)
        Camp.setTitle("Campuchia", for: .normal)
        Malay.setTitle("Malaysia", for: .normal)
        Singa.setTitle("Singapore", for: .normal)
        Indo.setTitle("Indonesia", for: .normal)
        Brun.setTitle("Brunei", for: .normal)
        Phil.setTitle("Philippines", for: .normal)
        Timor.setTitle("Đông Timor", for: .normal)
    }
    @IBAction func press(_ sender: UIButton) {
        lab.text = ""
        switch sender.tag {
        case 1:
            flag.image = UIImage(named: "VN")
        case 2:
            flag.image = UIImage(named: "Lao1")
        case 3:
            flag.image = UIImage(named: "MA")
        case 4:
            flag.image = UIImage(named: "TL")
        case 5:
            flag.image = UIImage(named: "CP")
        case 6:
            flag.image = UIImage(named: "ML")
        case 7:
            flag.image = UIImage(named: "ID")
        case 8:
            flag.image = UIImage(named: "DTM")
        case 9:
            flag.image = UIImage(named: "SP")
        case 10:
            flag.image = UIImage(named: "BR")
        case 11:
            flag.image = UIImage(named: "PL")
        default:
            flag.image = UIImage(named: "AS")
        }
    }
}
