//2822 점수 계산
var arr = [Int: Int]()

for i in 1...8 {
    let score = Int(readLine()!)!
    arr.updateValue(score, forKey: i)
}

// 하위 3개 제거
let sortedScores = arr.sorted { $0.value > $1.value }
let top5Scores = sortedScores.prefix(5)

// 총점 계산
let totalScore = top5Scores.reduce(0) { $0 + $1.value }

// 출력
print(totalScore)
let top5Keys = top5Scores.map { $0.key }
print(top5Keys.sorted().map(String.init).joined(separator: " "))