let n = Int(readLine()!)!
let scoreArr = readLine()!.split(separator: " ").map{ Int($0)! }

var nowScore = 0
var myScore = 0

for score in scoreArr {
    if score == 1 {
        nowScore += 1
        myScore += nowScore
    } else {
        nowScore = 0
    }
}
print(myScore)