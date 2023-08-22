let str = readLine()!.map { String($0) }
var arr = [String]()

for i in 0..<str.count {
    arr.append(str[i])
    
    if arr.count == 10 { // 10개마다 출력후 빈칸으로 초기화
        print(arr.joined(separator: ""))
        arr.removeAll()
    }
}

if !arr.isEmpty { // 남아있는 요소 출력
    print(arr.joined(separator: ""))
}  