

import Foundation

//Bài 1
func uoc(so: Int) -> [Int] {
    var uocs = [Int]()
    for i in 1...so {
        if so%i==0 {
            uocs.append(contentsOf: [i,-i])
        }
    }
    return uocs
}

//Bài 2
func ten(te: String) {
    let hote = te.split(separator: " ")
    print("\(hote[0]) \(hote[hote.count-1])")
}


//Bài 3
func ques() {
    print("Đâu không phải là một ngôn ngữ lập trình?\na - Golang   b - Swift   c - Ruby   d - Daily\nĐáp án của bạn: ", terminator: "")
    let u = readLine()?.lowercased()
    if u == "c" {
        print("Bạn đã trả lời đúng")
    } else if ["a", "b", "d"].contains(u) {
        print("Bạn đã trả lời sai")
    } else {
        print("Bạn chưa đưa ra câu trả lời")
    }
}

//Bài 4
func helo(so: Int) {
    if so > 0 && so <= 32767 {
        for i in 1..<so {
            var helos = [Int]()
            var re = 0
            for o in 1..<i{
                if i%o==0 {
                    helos.append(o)
                }
            }
            for u in helos {
                re += u
            }
            if re == i {
                print(i)
            }
        }
    }
    else {
        print("Số không hợp lệ")
    }
}

