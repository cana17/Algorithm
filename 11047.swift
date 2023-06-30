import Foundation

// 변수, 상수 선언
let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
let n = input[0]
var money = input[1]
var arr: [Int] = []
var answer = 0

// 동전 종류들 입력하고 빈 배엶arr에 거꾸로 저장
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}
arr.reverse()

// 거스름돈 계산 로직
for i in arr {
    if i <= money {
        let cnt = money / i
        answer += cnt
        money -= (cnt * i)
    }
    
    if money <= 0 {
        break
    }
}

// 정답 출력
print(answer)