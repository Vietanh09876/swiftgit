

import Foundation


//Bài 1
var o = 0
func tinh() {
    if o == 3 {
        print("Chán không chơi nữa")
    } else {
        print("Hãy cho 1 số: ", terminator: "" )
        let x = readLine()
        guard let x1 = x, var x2 = Int(x1) else {
            print("\(-1)\n")
            o += 1
            tinh()
            return
        }
        var u = 0
        if x2 >= 1 {
            while x2 != 1 {
                if x2%2 == 0 {
                    x2 = x2 / 2
                    u += 1
                } else {
                    x2 = (x2 * 3) + 1
                    u += 1
                }
            }
            print("Sau \(u) phép tính thì ra được 1")
        }
        else {
            print("\(-1)\n")
            o += 1
            tinh()
        }
    }
}


//Bài 2
var l = 0
func dx() {
    if l == 3 {
        return
    } else {
        print("Hãy điền 1 số: ", terminator: "")
        let so = readLine()
        guard let so1 = so, let so2 = Int(so1) else {
            print("Không hợp lệ, hãy thử điền số nguyên")
            l += 1
            dx()
            return
        }
        let arso = Array(String(so2))
        if arso == arso.reversed() {
            print("\(so2) là số đối xứng")
        }
        else {
            print("\(so2) không phải là số đối xứng")
        }
    }
}


//bài 3
func taxi() {
    print("Số Km: ", terminator: "")
    let k = readLine()
    if let km = k, let km1 = Double(km) {
        var tien: Double = 0
        if 0 < km1 && km1 <= 1 {
            tien = ((km1 * 5000) * 100).rounded() / 100
            print("Số tiền phải trả: \(tien)đ")
        }
        else if  km1 > 1 && km1 <= 30 {
            tien = ((5000 + ((km1-1) * 4000)) * 100).rounded() / 100
            print("Số tiền phải trả: \(tien)đ")
        }
        else if km1 > 30 {
            tien = ((5000 + (29 * 4000) + ((km1-30) * 3000)) * 100).rounded() / 100
            print("Số tiền phải trả: \(tien)đ")
        }
        else {
            print("Số Km không Hợp lệ")
        }
    }
    else {
        print("Số Km không hợp lệ")
    }
}

