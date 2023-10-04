let t = Int(readLine()!)!
for _ in 0..<t {
    var yonsei = 0
    var korea = 0
    for _ in 1...9 {
        let score = readLine()!.split(separator: " ").map{ Int($0)! }
        yonsei += score[0]
        korea += score[1]
    }
    print(yonsei > korea ? "Yonsei" : "Korea")
}