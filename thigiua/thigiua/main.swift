
import Foundation

//Bài 1
func hcn() {
    print("Chiều dài: ", terminator: "")
    let x = readLine()
    guard let x1 = x, let x2 = Int(x1) else {
        print("Chiều dài không hợp lệ")
        return
    }
    print("Chiều rộng: ", terminator: "")
    let y = readLine()
    guard let y1 = y, let y2 = Int(y1) else {
        print("Chiều rộng không hợp lệ")
        return
    }
    if x2 == 0 || y2 == 0 {
        print("Chiều rộng hoặc chiều dài không hợp lệ")
    } else {
        for i in 1...y2 {
            for u in 1...x2 {
                if i == 1 || i == y2 {
                    print("*", terminator: "")
                }
                else {
                    if u == 1 || u == x2 {
                        print("*",terminator: "")
                    } else {
                        print(" ", terminator: "")
                    }
                }
            }
            print()
        }
    }
}


//Bài 2
func lich() {
    print("Ngày: ", terminator: "")
    let n = readLine()
    print("Tháng: ", terminator: "")
    let t = readLine()
    print("Năm: ", terminator: "")
    let na = readLine()
    guard let n1 = n, let n2 = Int(n1) else {
        print("Ngày không hợp lệ")
        return
    }
    guard let t1 = t, let t2 = Int(t1) else {
        print("Tháng không hợp lệ")
        return
    }
    guard let na1 = na, let na2 = Int(na1) else {
        print("Năm không hợp lệ")
        return
    }
    if t2 > 12 || t2 < 1 {
        print("Tháng không hợp lệ")
        return
    }
    else {
        if [1,3,5,7,8,10,12].contains(t2) {
            print("Tháng \(t2) có 31 ngày")
        }
        else if t2 == 2 {
            if na2%4 == 0 && na2%100 != 0 || na2%400 == 0 {
                print("Tháng \(t2) có 29 ngày")
            }
            else {
                print("Tháng \(t2) có 28 ngày")
            }
        }
        else {
            print("Tháng \(t2) có 30 ngày")
        }
    }
    if [1,3,5,7,8,10,12].contains(t2) {
        if t2 == 1 {
            if n2 < 31 && n2 > 1 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else if n2 == 31 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày 1 tháng \(t2+1)")
            }
            else if n2 == 1{
                print("Ngày trước ngày \(n2) là ngày 31 tháng 12 năm \(na2-1) ")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else {
                print("Ngày không hợp lệ")
            }
        }
        else if t2 == 12 {
            if n2 < 31 && n2 > 1 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else if n2 == 31 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày 1 tháng 1 năm \(na2+1)")
            }
            else if n2 == 1 {
                print("Ngày trước ngày \(n2) là ngày 30 tháng \(t2-1) ")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else {
                print("Ngày không hợp lệ")
            }
        }
        else if t2 == 3 {
            if na2%4 == 0 && na2%100 != 0 || na2%400 == 0 {
                if n2 < 30 && n2 > 1 {
                    print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                    print("Ngày sau ngày \(n2) là ngày \(n2+1)")
                }
                else if n2 == 30 {
                    print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                    print("Ngày sau ngày \(n2) là ngày 1 tháng \(t2+1)")
                }
                else if n2 == 1 {
                    print("Ngày trước ngày \(n2) là ngày 29 tháng \(t2-1) ")
                    print("Ngày sau ngày \(n2) là ngày \(n2+1)")
                }
                else {
                    print("Ngày không hợp lệ")
                }
            }
            else {
                if n2 < 30 && n2 > 1 {
                    print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                    print("Ngày sau ngày \(n2) là ngày \(n2+1)")
                }
                else if n2 == 30 {
                    print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                    print("Ngày sau ngày \(n2) là ngày 1 tháng \(t2+1)")
                }
                else if n2 == 1 {
                    print("Ngày trước ngày \(n2) là ngày 28 tháng \(t2-1) ")
                    print("Ngày sau ngày \(n2) là ngày \(n2+1)")
                }
                else {
                    print("Ngày không hợp lệ")
                }
            }
        }
        else {
            if n2 < 31 && n2 > 1 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else if n2 == 31 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày 1 tháng \(t2+1)")
            }
            else if n2 == 1 {
                print("Ngày trước ngày \(n2) là ngày 30 tháng \(t2-1) ")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else {
                print("Ngày không hợp lệ")
            }
        }
    }
    else if t2 == 2 {
        if na2%4 == 0 && na2%100 != 0 || na2%400 == 0 {
            if n2 < 29 && n2 > 1 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else if n2 == 29 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày 1 tháng \(t2+1)")
            }
            else if n2 == 1 {
                print("Ngày trước ngày \(n2) là ngày 31 tháng \(t2-1) ")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else {
                print("Ngày không hợp lệ")
            }
        }
        else {
            if n2 < 28 && n2 > 1 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày \(n2+1)")
            }
            else if n2 == 28 {
                print("Ngày trước ngày \(n2) là ngày \(n2-1)")
                print("Ngày sau ngày \(n2) là ngày 1 tháng \(t2+1)")
            }
            else if n2 == 1 {
                print("Ngày trước ngày \(n2) là ngày 31 tháng \(t2-1) ")
                print("Ngày sau ngày \(n2) là ngày 1 \(n2+1)")
            }
            else {
                print("Ngày không hợp lệ")
            }
        }
    }
    else {
        if n2 < 30 && n2 > 1 {
            print("Ngày trước ngày \(n2) là ngày \(n2-1)")
            print("Ngày sau ngày \(n2) là ngày \(n2+1)")
        }
        else if n2 == 30 {
            print("Ngày trước ngày \(n2) là ngày \(n2-1)")
            print("Ngày sau ngày \(n2) là ngày 1 tháng \(t2+1)")
        }
        else if n2 == 1 {
            print("Ngày trước ngày \(n2) là ngày 31 tháng \(t2-1) ")
            print("Ngày sau ngày \(n2) là ngày \(n2+1)")
        }
        else {
            print("Ngày không hợp lệ")
        }
    }
}


//Bài 3
var o = 0
func doan() {
    let x = Int.random(in: 1...100)
    if o == 3 {
        print("Bạn đã hết lượt thử")
    }
    else {
        print("Hãy đoán 1 số bất kỳ từ 1-100: ", terminator: "")
        let y = readLine()
        guard let y1 = y, let y2 = Int(y1) else {
            print("Không hợp lệ")
            o += 1
            doan()
            return
        }
        if x == y2 {
            print("Chúc mừng bạn đã đoán đúng")
        }
        else if y2 < x {
            print("Bé quá")
        }
        else {
            print("Lớn quá")
        }
    }
}

