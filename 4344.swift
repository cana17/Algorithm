import Foundation

let c = Int(readLine()!)!

for _ in 0..<c {
    let input = readLine()!.split(separator: " ").compactMap { Double($0) }
    let scores = input[1...] // 두번째 요소부터 점수
    
    let average = scores.reduce(0.0, +) / Double(input[0]) //
    let aboveAverageCount = scores.filter { $0 > average}.count
    
    let aboveAveragePercentage = Double(aboveAverageCount) / Double(input[0]) * 100.0
    let formattedPercentage = String(format: "%.3f", aboveAveragePercentage)
    
    print(formattedPercentage + "%")
}