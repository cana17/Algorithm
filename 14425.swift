let n = readLine()!.split(separator: " ").map { Int($0)! }

var setN = Set<String>()
var arrM = [String]()

for _ in 0..<n[0] {
    let s = readLine()!
    setN.insert(s)
}

for _ in 0..<n[1] {
    let s = readLine()!
    arrM.append(s)
}

var cnt = 0
for i in 0..<arrM.count {
    if setN.contains(arrM[i]) {
        cnt += 1
    }
}
print(cnt)