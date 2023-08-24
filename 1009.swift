let t = Int(readLine()!)!
let arr = [[1,1,1,1,1],[6,2,4,8,6],[1,3,9,7,1],[6,4,6,4,6],[5,5,5,5,5],[6,6,6,6,6],[1,7,9,3,1],[6,8,4,2,6],[1,9,1,9,1],[0,0,0,0,0]]

for _ in 0..<t {
    let n = readLine()!.split(separator: " ").map{ Int($0)! }
    var (a, b) = (n[0], n[1])
    a %= 10 // 0~9
    b %= 4 // 0~3
    if a == 0 {
        print(10)
    } else {
        print(arr[a-1][b])
    }
}