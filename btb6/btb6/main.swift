import Foundation

//Số armstrong
func arm() {
    for i in 0...1000 {
        var ok = i
        var u = [Int]()
        var o: Double = 0
        while ok > 0 {
            u.append(ok%10)
            ok = ok/10
        }
        for so in u {
            o += pow(Double(so), Double(u.count))
        }
        if Double(i) == o {
            print(i)
        }
    }
}


//Bài 1
var k = 0
func chen(ko: [Double]) {
    if k == 3 {
        print("Hết lượt")
    }
    else {
        print("Hãy điền 1 giá trị: ", terminator: "")
        let x = readLine()
        guard let x1 = x, let x2 = Double(x1) else {
            print("Không hợp lệ")
            k += 1
            chen(ko: ko)
            return
        }
        var ko1 = ko
        var max = ko[0]
        var inds = 0
        for (ind, val) in ko.enumerated(){
            if val > max {
                inds = ind
                max = val
            }
        }
        ko1.insert(x2, at: inds+1)
        print(ko1)
    }
}


//Bài 2
var mn = 0
func chent(ok: [Double]) {
    if mn == 3 {
        print("Hết lượt")
    }
    else {
        print("Hãy điền 1 giá trị: ", terminator: "")
        let x = readLine()
        guard let x1 = x, let x2 = Double(x1) else {
            print("Không hợp lệ")
            mn += 1
            chent(ok: ok)
            return
        }
        var ok1 = ok
        var f = ok[0]
        ok1.append(x2)
        for i in 0..<ok1.count-1 {
            for u in i+1..<ok1.count {
                if ok1[i] > ok1[u] {
                    f = ok1[i]
                    ok1[i] = ok1[u]
                    ok1[u] = f
                }
            }
        }
        print(ok1)
    }
}


//Bài 3
func nguyen() {
    print("Hãy điền 1 giá trị: ", terminator: "")
    let y = readLine()
    guard let y1 = y, let y2 = Int(y1) else {
        print("Không hợp lệ")
        return
    }
    var c = [Int]()
    for n in 1...y2 {
        if y2%n == 0 {
            c.append(n)
        }
    }
    if c.count == 2 {
        print("\(y2) là số nguyên tố")
    }
    else {
        print("\(y2) không phải là số nguyên tố")
    }
}



//Bài 4
var s = 0
func demn() {
    if s == 3 {
        print("Hết lượt")
    }
    else {
        print("Tìm số nguyên tố trong khoảng từ: ",terminator: "")
        let a = readLine()
        print("Đến: ", terminator: "")
        let b = readLine()
        guard let a1 = a, let a2 = Int(a1) else {
            print("Số đầu không hợp lệ")
            s += 1
            demn()
            return
        }
        guard let b1 = b, let b2 = Int(b1) else {
            print("Số cuối không hợp lệ")
            s += 1
            demn()
            return
        }
        var h = 0
        var r = [Int]()
        for g in a2...b2 {
            var c = [Int]()
            var g1 = g
            if g1 == 0 {
                g1 += 1
            }
            if g1 < 0 {
                g1 = abs(g1)
            }
            for n in 1...g1 {
                if g%n == 0 {
                    c.append(n)
                }
            }
            if c.count == 2 {
                if g > 1 {
                    h += 1
                    r.append(g)
                }
            }
        }
        print("Trong khoảng từ \(a2) đến \(b2) có \(h) số nguyên tố là: \(r)")
    }
}

