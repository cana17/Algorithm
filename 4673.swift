func d(_ n: Int) -> Int { //생성자 구하기 함수
    var sum = n
    var temp = n
    
    while temp != 0 {
        sum += temp % 10
        temp /= 10
    }
    return sum
}

var numSet = Set<Int>() //Set으로 해야 빠름

for i in 1...10000 { // not 셀프넘버
    numSet.insert(d(i))
}

for j in 1...10000 { // 셀프넘버만 출력
    if !numSet.contains(j) {
        print(j)
    }
}