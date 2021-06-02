import Foundation

//Bài 1
class SoHoc {
    var number1: Double
    var number2: Double
    init(_ number1: Double, _ number2: Double) {
        self.number1 = number1
        self.number2 = number2
    }
    func printInfo() {
        print("number1 = \(number1)\nnumber2 = \(number2)")
    }
    func addition() -> Double {
        return number1+number2
    }
    func subtract() -> Double {
        return number2-number1
    }
    func multi() -> Double {
        return number1*number2
    }
    func division() -> Double {
        return number2/number1
    }
}


//Bài 2
class NhanVien {
    var ten: String
    var tuoi: String
    var diachi: String
    var luong: Double
    var tonggiolam: Int
    init(_ ten: String,_ tuoi: String,_ diachi: String,_ luong: Double,_ tonggiolam: Int) {
        self.ten = ten
        self.tuoi = tuoi
        self.diachi = diachi
        self.luong = luong
        self.tonggiolam = tonggiolam
    }
    func printinfo() {
        print("Tên: \(ten)\nTuổi: \(tuoi)\nĐịa chỉ: \(diachi)\nLương: \(luong)\nTổng giờ làm: \(tonggiolam)")
    }
    func tinhThuong() -> Double {
        if tonggiolam >= 200 {
            return luong * (20/100)
        }
        else if tonggiolam >= 100 && tonggiolam < 200 {
            return luong * (10/100)
        }
        else {
            return 0
        }
    }
}


//Bài 3
class triangle {
    var a: Double
    var b: Double
    var c: Double
    init(_ a: Double,_ b: Double,_ c: Double) {
        self.a = a
        self.b = b
        self.c = c
    }
    func tritype() {
        if a == b && a == c {
            print("Tam giác đều")
            return
        }
        if a == b || a == c || b == c {
            print("Tam giác cân")
        }
        if (a*a + b*b) == c*c || (a*a + c*c) == b*b || (b*b + c*c) == a*a {
            print("Tam giác vuông")
        }
        else if a != b && a != c {
            print("Tam giác thường")
        }
    }
    func chuvi() -> Double {
        return a+b+c
    }
    func S() -> Double {
        let p = Double((a+b+c)/2)
        return sqrt(p*(p-a)*(p-b)*(p-c))
    }
}

