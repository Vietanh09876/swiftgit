import Foundation

//bài 1
func th(thang: Int) -> String {
    if [1,3,5,7,8,10,12].contains(thang) {
        return "31 ngay"
    }
    else if thang == 2 {
        return "28 ngay neu la nam khong nhuan \n29 ngay neu la nam nhuan"
    }
    else {
        return "30 ngay"
    }
}

//bài 2
func tong(t: Int) -> Any {
    let x = String(t)
    let y = Array(x)
    var result: Int = 0
    for val in y {
        result += val.wholeNumberValue!
    }
    return result
}


//Bài 3
func str(chuoi: String) {
    var u = 0
    for _ in chuoi {
        u += 1
    }
    if u > 10 {
        print(chuoi.prefix(10) + "...")
    }
    else {
        print(chuoi)
    }
}

//Bài 4
func tim(mang: [Int]) -> (Int, Int) {
    var max = mang[0]
    var min = mang[0]
    for n in mang {
        if n > max {
            max = n
        }
        if n < min {
            min = n
        }
    }
    return (max, min)
}

//Bài 5
func tim2(mang2: [Int]) -> Int {
    var max2 = mang2[0]
    var max3 = mang2[0]
    for n in mang2 {
        if n > max2 {
            max2 = n
        }
    }
    for v in mang2 {
        if v > max3 && v < max2 {
            max3 = v
        }
    }
    return max3
}

//Bài 6
func rever(y: String) -> String {
    let y1 = Array(y)
    var y2: [Character] = []
    for i in y1.reversed() {
        y2.append(i)
    }
    return String(y2)
}


//Bài 7
func tria(h: Int) {
    var h1 = h
    var h2 = 1
    for _ in 1...h {
        let x = String([Character](repeating: " ", count: h1-1))
        let y = String([Character](repeating: "*", count: h2))
        print(x + y)
        h1 -= 1
        h2 += 2
    }
}
