import Foundation
//Bài tập buổi 2

//Bài 1
func so(a: Int, b: Int, c: Int) -> (Int, Int) {
    var max:Int, min:Int
    max = a
    if max < b {
        max = b
    }
    if max < c {
        max = c
    }
    min = a
    if min > b {
        min = b
    }
    if min > c {
        min = c
    }
    return (max, min)
}


//Bài 2
func tri(a: Float, b: Float, c: Float) {
    if a + b > c && a + c > b && b + c > a {
        let p = (a + b + c)/2
        let result = (p*(p-a)*(p-b)*(p-c))
        print(result.squareRoot())
    }
    else {
        print("a, b, c không phải 3 cạnh của tam giác")
    }
}


//Bài 3
func nhuan(nam: Int) {
    if nam%400 == 0 {
        print("\(nam) là năm nhuận")
    }
    else if nam%4 == 0 && nam%100 != 0 {
        print("\(nam) là năm nhuận")
    }
    else {
        print("\(nam) không phải năm nhuận")
    }
}


//Bài 4
func tong(n: Int) -> Int {
    return ((n+1)*n)/2
}


//Bài 5
func timer(time: String, X: Int) -> String {
    let timesep = time.components(separatedBy: ":")
    var hour = Int(timesep[0]), minute = Int(timesep[1]), seccond = Int(timesep[2])
    seccond! += X
    while seccond! >= 60 {
        minute! += 1
        seccond! -= 60
    }
    while minute! >= 60 {
        hour! += 1
        minute! -= 60
    }
    while hour! >= 12 {
        hour! -= 12
    }
    return "\(hour!):\(minute!):\(seccond!)"
}
