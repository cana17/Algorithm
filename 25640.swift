let mbti = readLine()!
let n = Int(readLine()!)!
var cnt = 0
for _ in 0..<n {
    let friend = readLine()!
    if friend == mbti {
        cnt += 1
    }
}
print(cnt)

//let mbti = readLine()!
//let n = Int(readLine()!)!
//let cnt = (0..<n).map { _ in readLine()! }.filter { $0 == mbti }.count
//print(cnt)