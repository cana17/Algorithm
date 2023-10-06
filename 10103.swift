var score = [100, 100]
let n = Int(readLine()!)!
for _ in 0..<n {
    let dice = readLine()!.split(separator: " ").map{ Int($0)! }
    let p1 = dice[0]
    let p2 = dice[1]
    
    if p1 > p2 {
        score[1] -= p1
    } else if p2 > p1 {
        score[0] -= p2
    } else {
        continue
    }
}
print(score[0])
print(score[1])